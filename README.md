# Zadania z Projektowania Obiektowego
Spis treści:
* [Zadanie 1](#zadanie-1-pascal)
* [Zadanie 2](#zadanie-2-symfony-php)
* [Zadanie 3](#zadanie-3-spring-boot-kotlin)

## Zadanie 1 Pascal
Proszę napisać program w Pascalu, który zawiera dwie procedury, jedna
generuje listę 50 losowych liczb od 0 do 100. Druga procedura sortuje
liczbę za pomocą sortowania bąbelkowego.

* 3.0 Procedura do generowania 50 losowych liczb od 0 do 100 [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/13734f7d6f64d09fc589db14fcd37f5427982ce1)
* 3.5 Procedura do sortowania liczb [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/a5293c17b488e01f661ce7728168853de67d4e2b)
* 4.0 Dodanie parametrów do procedury losującej określającymi zakres losowania: od, do, ile [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/031bd0968a6dbf7fc5dfdea82452de323da1468b)
* 4.5 5 testów jednostkowych testujące procedury [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/d9ad2b651b525d3335068d70c2b8b05a90ac4809)
* 5.0 Skrypt w bashu do uruchamiania aplikacji w Pascalu via docker [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/0915e94d2904387e157c896c82c7e1f2a6703f50)

Kod: folder **zad1**

## Zadanie 2 Symfony PHP

Należy stworzyć aplikację webową na bazie frameworka Symfony na
obrazie kprzystalski/projobj-php:latest. Baza danych dowolna, sugeruję
SQLite.
* 3.0 Należy stworzyć jeden model z kontrolerem z produktami, zgodnie z
CRUD [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/193633f9565f3f840d5565a8574f155a91934a8e)
* 3.5 Należy stworzyć skrypty do testów endpointów via curl [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/a321211985dd2d10b09e365a10c4c2502ff54c3b)
* 4.0 Należy stworzyć dwa dodatkowe kontrolery wraz z modelami [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/6bb95a2f83c223e1fb3778124f83a4fce7d4b196)
* 4.5 Należy stworzyć widoki do wszystkich kontrolerów [commit + wcześniej, przy tworzeniu kontrollerów wygenerowana większość](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/edbe5bba8b5bb3bb3a6480ae776c2e0c82125c54)
* 5.0 Stworzenie panelu administracyjnego z mockowanym logowaniem

Kod: folder **zad2**

Aplikację uruchamiam poleceniem `# symfony server:start --port=80 --allow-all-ip`

## Zadanie 3 Spring Boot Kotlin

Proszę stworzyć prosty serwis do autoryzacji, który zasymuluje
autoryzację użytkownika za pomocą przesłanej nazwy użytkownika oraz
hasła. Serwis powinien zostać wstrzyknięty do kontrolera za pomocą
anotacji @Autowired. Aplikacja ma oczywiście zawierać jeden kontroler
i powinna zostać napisana w języku Kotlin. Oparta powinna zostać na
frameworku Spring Boot, podobnie jak na zajęciach. Serwis do
autoryzacji powinien być singletonem.

* 3.0 Należy stworzyć jeden kontroler wraz z danymi wyświetlanymi z
listy na endpoint’cie w formacie JSON - Kotlin + Spring Boot
* 3.5 Należy stworzyć klasę do autoryzacji (mock) jako Singleton w
formie eager
* 4.0 Należy obsłużyć dane autoryzacji przekazywane przez użytkownika
* 4.5 Należy wstrzyknąć singleton do głównej klasy via @Autowired
* 5.0 Obok wersji Eager do wyboru powinna być wersja Singletona w wersji
lazy

Kod: folder **zad3**
