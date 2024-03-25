# Użyj najnowszego obrazu Ubuntu jako obrazu bazowego
FROM ubuntu:latest

# Zaktualizuj system Ubuntu
RUN apt-get update && apt-get upgrade -y

# Zainstaluj serwer HTTP Apache
RUN apt-get install -y apache2

# Skopiuj stronę WWW do katalogu domowego serwera Apache
COPY index.html /var/www/html/index.html

# Ustaw port, na którym serwer będzie "nasłuchiwać"
EXPOSE 8080

# Informacje o autorze
LABEL author="Hubert Sikora"
LABEL email="s97732@pollub.edu.pl"

# Uruchom serwer Apache w trybie przedniego planu
CMD ["apache2ctl", "-D", "FOREGROUND"]