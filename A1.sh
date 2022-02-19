while :; do
   if command -v php; then
       php -S localhost:8181 &> /dev/null &
       exit 0
   else
       printf "\e[1;34m Instalando PHP...\e[m"
       pkg i -y php
       [[ $? -eq 0 ]] || exit 1
   fi
done
