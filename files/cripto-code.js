/**
 * requires node.js with ES6 support, or babel
 */
'use strict';

const vm = require('vm');
const fs = require('fs');

const __loggers__ = {};
function log(tag) {
  if (__loggers__.hasOwnProperty(tag))
    return __loggers__[tag];

  return (__loggers__[tag] = function() {
    let args = [].slice.call(arguments).map(e => typeof e === 'string' ? `"${e}"` : e);
    console.log(`>> ${tag}(${args})\n`);
  });
}

class EvalLogger {
  constructor(opt) {
    this.opt = opt || {};
    let sandbox = this.sandbox = {
      __Function__: code => (() => sandbox.eval(code)),
      document: {
        write: log('document.write'),
        writeln: log('document.write')
      }, 
      alert: log('alert')
    };
    let self = this;
    // hook eval
    ['setTimeout', 'setInterval', 'eval'].forEach(func => sandbox[func] = (() => {
      return code => {
        log(func)(code);
        return self.run(code);
      }
    })());

    // hook function constructor
    let context = self.context = vm.createContext(sandbox);
    let monkeyPatch = new vm.Script('\'use strict\';Function.prototype.constructor = __Function__;');
    monkeyPatch.runInContext(context);
  }

  run(code) {
    code = (code || '') + '';
    
    let jjencodePrefix = 'return';
    if (code.indexOf(jjencodePrefix) === 0) {
      code = `(function () {${code}})()`;
    }

    try {
      return vm.runInContext(code, this.sandbox, {timeout: this.opt.timeout || 100});
    } catch(err) {
      console.error(`[*] "${err.message}" occured while executing "${code}"`);
    }
  }
}

if (process.argv.length === 3) {
  const fileName = process.argv[2];
  if (!fileName.match(/^\-h$/i)) {
    let content = fs.readFileSync(fileName).toString('utf8');
    new EvalLogger().run(content);
    process.exit();
  }
}

console.log(`Usage: node ${process.argv[1]} [filename]`)