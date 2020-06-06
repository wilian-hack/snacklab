#!/data/data/com.termux/files/usr/bin/bash
# creador      : wilian-legion-anonimous
# laboratorio  : snacklab

# colores

#   \e[96;1m   = Blue aqua
#   \e[34;1m   = Blue light
#   \e[33;1m   = Yellow light
#   \e[32;1m   = Green light     
#   \e[0;1m    = White light
#   \e[31;1m   = Red light
#   \e[36;1m   = Cyan light
#   \e[34m     = Azul
#   \e[33;1m   = Amarillo
#   \e[32m     = Verde
#   \e[0;1m    = White
#   \e[31m     = Rojo
#   \e[36;1m   = celeste

sleep 1
clear
printf "\e[1;90m
        §§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
      §§§§§§§\e[1;31mWILIAN-\e[0mLEGION\e[1;31m-ANONIMOUS\e[1;90m§§§§§§§§§
     §§§§§§§§§§§§§§§§§\e[1;31mP\e[0mER\e[1;31mÚ\e[1;90m§§§§§§§§§§§§§§§§§§§§
    §§§§§§§§                         §§§§§§§§§§
   §§§§§§§§   \e[1;31m[\e[0m1\e[1;31m] \e[0mComandos de termux. \e[1;90m §§§§§§§§§
  §§§§§§§§§§  \e[1;31m[\e[0m2\e[1;31m] \e[0mHacking facebook.  \e[1;90m   §§§§§§§§§
 §§§§§§§§§§§  \e[1;31m[\e[0m3\e[1;31m]\e[0m Hacking camaras.    \e[1;90m  §§§§§§§§§
 §§§§§§§§§§§  \e[1;31m[\e[0m4\e[1;31m] \e[0mHacking audio.      \e[1;90m  §§§§§§§§§
 §§§§§§§§§§   \e[1;31m[\e[0m5\e[1;31m]\e[0m Logins para termux.  \e[1;90m §§§§§§§§§
 §§§§§§§§§    \e[1;31m[\e[0m6\e[1;31m] \e[0mTutoriales.           \e[1;90m§§§§§§§§§
 §\e[1;31m⚈)\e[1;90m§§§§§     \e[1;31m[\e[0m7\e[1;31m] \e[0mLibros.               \e[1;90m§§§§§§§§§
 §§§§§§§  \e[1;31m [\e[0m8\e[1;31m] \e[0m Solucion a errores.    \e[1;90m §§§§§§§§§
  §§§§    \e[1;31m [\e[0m9\e[1;31m]\e[0m  Descargador de paginas.\e[1;90m §§§§§§§§§
   §      \e[1;31m[\e[0m10\e[1;31m]\e[0m Descargador de mp3.      \e[1;90m§§§§§§§§§
   §      \e[1;31m[\e[0m11\e[1;31m]\e[0m Descargador de mp4HD.   \e[1;90m §§§§§§§§§
  §       \e[1;31m[\e[0m12\e[1;31m]\e[0m Virus.                  \e[1;90m§§§§§§§§§§
   §      \e[1;31m[\e[0m13\e[1;31m] \e[0mServicios hacking.    \e[1;90m §§§§§§§§§§
  § §     \e[1;31m[\e[0m14\e[1;31m] \e[0mSalir.               \e[1;90m§§§§§§§§§§§
                                  §§§§§§§§§§§    "
echo 
echo
read -p $'  \e[1;31m ☣️🎭An๏\e[0mnym\e[1;31m๏uร🎭☣️ >>\e[0m ' anonimous

case $anonimous in
	1)
		sleep 1
		clear
		bash menu_1
		;;

	2) 
		sleep 1
		clear
		bash menu_2
		;;
	3)
		sleep 1
		clear
		bash menu_3
		;;
	4)
		sleep 1
		clear
		bash menu_4
	        ;;
	5)
		sleep 1
		clear
		bash menu_5
		;;
	6)
		sleep 1
		clear
		bash menu_6
		;;
	7)	
		sleep 1
		clear
		bash menu_7
		;;
	8)
		sleep 1
		clear
		bash menu_8
		;;
	9)
		sleep 1
		clear
		bash menu_9
		;;
	10)
		sleep 1
		clear
		bash menu_10
		;;
	11)
		sleep 1
		clear
		bash menu_11
		;;
	12) 
		sleep 1
		clear
		bash menu_12
		;;
	13)
		sleep 1
		clear
		bash menu_13
		;;
	14)
		exit
		;;


esac
