# SprawozdanieLab4
1. Na początku należy otworzyć folder w którym znajduje się plik Dockerfile oraz index.html
2. Wykonać polecenie:
   docker build -t web100 .
3. Wykonać polecenie:
   docker run -d -p 8080:8080 web100
4. Dodatkowo należy wykonać te kroki aby zmienić w pliku ports.conf Listen 80 na Listen 8080, aby umożliwić poprawne wyświetlanie w przeglądarce:
   docker exec -it 'CONTAINER ID' sh
   cd etc
   cd apache2
   nano ports.conf
I tutaj należy właśnie wykonać zmianę z Listen80 na Listen 8080
5. Po wykonaniu punktu 4 należy zrestartować serwer tym poleceniem:
   ervice apache2 restart
6. Po zrestartowaniu uruchamiamy od nowa kontener tym poleceniem:
   docker start 'CONTAINER ID'
