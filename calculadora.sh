#!/bin/bash
# Exercicio para treinamento de uso de botões e de funções
# +associaiadas a eles.

function Opera
{
	local Result=$(bc <<< "scale=$2; $1" 2> /dev/null) 
	echo 1:$Result
};	export -f Opera

#Fim=\!/usr/share/icons/HighContrast/16x16/actions/system-shutdown.png
yad	--title "Calculadora"			\
	--columns 6 --form --no-buttons		\
	--field "" ""				\
	--field "\tDecimais:":LBL ""		\
	--field ":NUM" "0!0..5"			\
	--field Sair:FBTN			\
	  '@bash -c "kill -USR2 $YAD_PID"'	\
	--field 1:FBTN "@echo 1:%1\1"		\
	--field 4:FBTN "@echo 1:%1\4"		\
	--field 7:FBTN "@echo 1:%1\7"		\
	--field \(:FBTN "@echo 1:%1\("		\
	--field 2:FBTN "@echo 1:%1\2"		\
	--field 5:FBTN "@echo 1:%1\5"		\
	--field 8:FBTN "@echo 1:%1\8"		\
	--field 0:FBTN "@echo 1:%1\0"		\
	--field 3:FBTN "@echo 1:%1\3"		\
	--field 6:FBTN "@echo 1:%1\6"		\
	--field 9:FBTN "@echo 1:%1\9"		\
	--field \):FBTN "@echo 1:%1\)"		\
	--field +:FBTN "@echo 1:%1\+"		\
	--field -:FBTN "@echo 1:%1\-"		\
	--field x:FBTN "@echo 1:%1\*"		\
	--field D:FBTN "@echo 1:%1\/"		\
	--field e:FBTN "@echo 1:%1\^"		\
	--field %:FBTN "@echo 1:%1%%"		\
	--field C:FBTN "@echo 1:''"		\
	--field =:FBTN '@bash -c "Opera ""%1"" %3"'

