# SprawozdanieLab4
1. Na początku należy otworzyć folder w którym znajduje się plik Dockerfile oraz index.html
2. Wykonać polecenie:
   docker build -t web100 .
3. Wykonać polecenie:
   docker run -d -p 8080:8080 web100
4. Dodatkowo należy wykonać te kroki aby zmienić w pliku ports.conf Listen 80 na Listen 8080, aby umożliwić poprawne wyświetlanie w przeglądarce:
   1. docker exec -it 'CONTAINER ID' sh
   2. cd etc
   3. cd apache2
   4. nano ports.conf
   5. I tutaj należy właśnie wykonać zmianę z Listen80 na Listen 8080
6. Po wykonaniu punktu 4 należy zrestartować serwer tym poleceniem:
service apache2 restart
7. Po zrestartowaniu uruchamiamy od nowa kontener tym poleceniem:
docker start 'CONTAINER ID'
