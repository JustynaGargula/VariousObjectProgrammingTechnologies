# Zadania z Projektowania Obiektowego
Spis treści:
* [Zadanie 1](#zadanie-1)
* [Zadanie 2](#zadanie-2)
* [Zadanie 3](#zadanie-3-spring-boot-(kotlin))

## Zadanie 1 Pascala
Proszę napisać program w Pascalu, który zawiera dwie procedury, jedna
generuje listę 50 losowych liczb od 0 do 100. Druga procedura sortuje
liczbę za pomocą sortowania bąbelkowego.

* 3.0 Procedura do generowania 50 losowych liczb od 0 do 100
* 3.5 Procedura do sortowania liczb
* 4.0 Dodanie parametrów do procedury losującej określającymi zakres
losowania: od, do, ile
* 4.5 5 testów jednostkowych testujące procedury
* 5.0 Skrypt w bashu do uruchamiania aplikacji w Pascalu via docker

## Zadanie 2 Symfony (PHP)

Należy stworzyć aplikację webową na bazie frameworka Symfony na
obrazie kprzystalski/projobj-php:latest. Baza danych dowolna, sugeruję
SQLite.
* 3.0 Należy stworzyć jeden model z kontrolerem z produktami, zgodnie z
CRUD
* 3.5 Należy stworzyć skrypty do testów endpointów via curl
* 4.0 Należy stworzyć dwa dodatkowe kontrolery wraz z modelami
* 4.5 Należy stworzyć widoki do wszystkich kontrolerów
* 5.0 Stworzenie panelu administracyjnego z mockowanym logowaniem

## Zadanie 3 Spring Boot (Kotlin)

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
