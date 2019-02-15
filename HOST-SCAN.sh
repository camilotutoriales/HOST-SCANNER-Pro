#!bin/bash
#creado por: Camilo Orrego
#fecha de creacion: 04/02/2019
#Esclusivo Para: CAMILO TUTORIALES
#COPYRIGT
while :
do
clear
echo -e "\e[0;34m"
echo "   __ ______  __________  ____________   _  __"
echo "  / // / __ \/ __/_  __/ / __/ ___/ _ | / |/ /"
echo " / _  / /_/ /\ \  / /   _\ \/ /__/ __ |/    /"
echo "/_//_/\____/___/ /_/   /___/\___/_/ |_/_/|_/ Pro"
echo ""
#banner
echo -e "\e[0;34m≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄"
echo -e "\e[0;31m[01]\033[0;32mHOST SEARCH ENGINE BRUTE FORCE"
echo -e "\e[0;31m[02]\033[0;32mSCANNER OF PORTS"
echo -e "\e[0;31m[03]\033[0;32mHTTP/SSL/TLS METHODS"
echo -e "\e[0;31m[04]\033[0;32mHOST VALIDATOR"
echo -e "\e[0;31m[05]\033[0;32mINTERNET SPEED METER"
echo -e "\e[0;31m[06]\033[0;32mIP GEOLOCATION"
echo -e "\e[0;31m[07]\033[0;32mINFORMATION FROM THE CREATOR"
echo -e "\e[0;31m[08]\033[0;32mEXIT SCRIPT..!!"
echo -e "\e[0;34m≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄≄"
echo -e "\e[1;33m"
echo -n "SELECT YOUR OPTION: ";
read OPCION;
#Menu listo
#Inicializar
case $OPCION in
1)echo ""
echo -n "HOST: ";
read HOST;
echo -e "\e[0;34m[>]Scanning Host..!!"
sleep 2
subquest scan $HOST | lolcat
setterm -foreground yellow
curl http://api.hackertarget.com/hostsearch/?q=$HOST
nmap --script dns-brute $HOST | lolcat
sleep 5
echo ""
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM"
read foo
;;
2)echo ""
echo -n "[web]: ";
read web;
echo -e "\e[0;34m[>]Scanning ports web..!!"
nmap -p 80,8080,3128,443,444,22,23,53,81,442,8000 $web | lolcat
sleep 5
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
3)echo ""
echo -n "[WEB/IP]: ";
read IP;
echo -e "\e[0;34m[>]Scanning the ip..!!"
nmap -v -A scanme $IP | lolcat
sleep 5
echo ""
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
4)echo ""
echo -n "DOMAIN/WEBSITE: ";
read WEBSITE;
echo -e "\e[0;34m[>]Scanning domain..!!"
curl -v $WEBSITE
sleep 5
echo ""
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
5)echo ""
echo -e "\e[0;34m[>]Initiating speed test..!!"
speedtest-cli | lolcat
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
6)echo ""
echo -n "[IP/GEO]: ";
read GEO;
echo -e "\e[0;34m[>]Scanning Geolocation..!!"
setterm -foreground green
curl http://api.hackertarget.com/geoip/?q=$GEO
sleep 5
echo ""
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
7)echo ""
echo -e "\e[0;36m"
sleep 2.5
echo "ESTA HERRAMIENTA FUE CREADA POR CAMILO TUTORIALES!"
sleep 2.5
echo "AGRADECER NO CUESTA NADA BY CAMILO ORREGO!"
sleep 2.5
echo "RECUERDA: CON ESFUERZO LOGRARAS EL EXITO"
sleep 2.5
echo "PUEDES SEGUIRME EN MIS REDES SOCIALES COMO:"
sleep 2.5
echo "EN FACEBOOK: Camilo Jhoset Orrego"
sleep 2.5
echo "EN WHATSAPP: Camilo17k"
sleep 2.5
echo "EN YOUTUBE: https://www.youtube.com/channel/UCpp4oHqj7FkW5_K8L0FU7FQ"
sleep 2.5
echo "EN TELEGRAN: https://t.me/Camilo_Tutoriales17k"
sleep 2.5
echo ""
echo -e "\e[1;31mPRESS ENTER TO CONTINUE IN THE SYSTEM!!"
read foo
;;
8)clear
exit 8;;
*)clear
echo -e "\e[0;31m[!]\033[0;32mInvalid command..!!";
sleep 2
;;
esac
done
