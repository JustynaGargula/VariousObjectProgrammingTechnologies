# Zadania z Projektowania Obiektowego
Spis treści:
* [Zadanie 1 Pascal](#zadanie-1-pascal)
* [Zadanie 2 Symfony](#zadanie-2-symfony-php)
* [Zadanie 3 Kotlin](#zadanie-3-spring-boot-kotlin)
* [Zadanie 4 Go](#zadanie-4-echo-go)
* [Zadanie 5 React](#zadanie-5-react)
* [Zadanie 6 Sonar](#zadanie-6-sonar-js)
* [Zadanie 7 Swift](#zadanie-7-vapor-swift)

## Zadanie 1 Pascal
Proszę napisać program w Pascalu, który zawiera dwie procedury, jedna
generuje listę 50 losowych liczb od 0 do 100. Druga procedura sortuje
liczbę za pomocą sortowania bąbelkowego.

* 3.0 Procedura do generowania 50 losowych liczb od 0 do 100 [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/13734f7d6f64d09fc589db14fcd37f5427982ce1)
* 3.5 Procedura do sortowania liczb [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/a5293c17b488e01f661ce7728168853de67d4e2b)
* 4.0 Dodanie parametrów do procedury losującej określającymi zakres losowania: od, do, ile [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/031bd0968a6dbf7fc5dfdea82452de323da1468b)
* 4.5 5 testów jednostkowych testujące procedury [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/d9ad2b651b525d3335068d70c2b8b05a90ac4809)
* 5.0 Skrypt w bashu do uruchamiania aplikacji w Pascalu via docker [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/0915e94d2904387e157c896c82c7e1f2a6703f50)

Kod w folderze: **zad1**

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

Kod w folderze: **zad2**

Aplikację uruchamiam poleceniem `# symfony server:start --port=80 --allow-all-ip`

## Zadanie 3 Spring Boot Kotlin

Proszę stworzyć prosty serwis do autoryzacji, który zasymuluje
autoryzację użytkownika za pomocą przesłanej nazwy użytkownika oraz
hasła. Serwis powinien zostać wstrzyknięty do kontrolera za pomocą
anotacji @Autowired. Aplikacja ma oczywiście zawierać jeden kontroler
i powinna zostać napisana w języku Kotlin. Oparta powinna zostać na
frameworku Spring Boot, podobnie jak na zajęciach. Serwis do
autoryzacji powinien być singletonem.

* 3.0 Należy stworzyć jeden kontroler wraz z danymi wyświetlanymi z listy na endpoint’cie w formacie JSON - Kotlin + Spring Boot [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/f1842c2849606b6b3eed77b5bfaacbd4487be92c)
* 3.5 Należy stworzyć klasę do autoryzacji (mock) jako Singleton w formie eager [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/b8e4215ae0149cdfb0a79c3ce3c82369bc588988)
* 4.0 Należy obsłużyć dane autoryzacji przekazywane przez użytkownika [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/acc937be2c1b2b1c6fd3ea35bfd9408de6a69c90)
* 4.5 Należy wstrzyknąć singleton do głównej klasy via @Autowired [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/acc937be2c1b2b1c6fd3ea35bfd9408de6a69c90)
* 5.0 Obok wersji Eager do wyboru powinna być wersja Singletona w wersji lazy [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/97dcad637576b2ab59dcd862f7cf8c67f8303b46)

Kod w folderze: **zad3/singletonApp**

## Zadanie 4 Echo Go
Należy stworzyć aplikację w Go na frameworku echo. Aplikacja ma mieć
jeden endpoint, minimum jedną funkcję proxy, która pobiera dane np. o
pogodzie, giełdzie, etc. (do wyboru) z zewnętrznego API. Zapytania do
endpointu można wysyłać w jako GET lub POST.

* 3.0 Należy stworzyć aplikację we frameworki echo w j. Go, która będzie
miała kontroler Pogody, która pozwala na pobieranie danych o pogodzie
(lub akcjach giełdowych) [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/608573ed86e24af789b4c6ae816f9466182b570a)
* 3.5 Należy stworzyć model Pogoda (lub Giełda) wykorzystując gorm, a
dane załadować z listy przy  [commit (2 commity później model przeniesiony do osobnego pliku)](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/11d28a6c3c54656d20a1aacdbd81e400ca403cd2)
* 4.0 Należy stworzyć klasę proxy, która pobierze dane z serwisu
zewnętrznego podczas zapytania do naszego kontrolera [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/2858ab32cafd895492947e513f6e79fa06b66c04)
* 4.5 Należy zapisać pobrane dane z zewnątrz do bazy danych [commit (ten i następny dodany 1.05.2025)](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/ff09c8fa40f1e1a56b9f3c09e2cedd849890d03f)
* 5.0 Należy rozszerzyć endpoint na więcej niż jedną lokalizację
(Pogoda), lub akcje (Giełda) zwracając JSONa [commit](https://github.com/JustynaGargula/VariousObjectProgrammingTechnologies/commit/4c1e3e1e244e33e808fe504ae53db1f417330bd9)

Kod w folderze: **zad4/app**
*Uwaga do punktu piątego: do pobrania pogody z innego miasta należy podać obie jego współrzędne geograficzne i nazwę miasta. Przykład: http://localhost:1323/weather?city=London&lat=51.5085&long=-0.1257*

## Zadanie 5 React
Wzorce behawioralne

Należy stworzyć aplikację kliencką wykorzystując bibliotekę React.js.
Dane pomiędzy wszystkimi komponentami powinny być przesyłane za pomocą
React hooks.

* 3.0 W ramach projektu należy stworzyć dwa komponenty: Produkty oraz
Płatności; Płatności powinny wysyłać do aplikacji serwerowej dane, a w
Produktach powinniśmy pobierać dane o produktach z aplikacji
serwerowej;
* 3.5 Należy dodać Koszyk wraz z widokiem; należy wykorzystać routing
* 4.0 Dane pomiędzy wszystkimi komponentami powinny być przesyłane za
pomocą React hooks
* 4.5 Należy dodać skrypt uruchamiający aplikację serwerową oraz
kliencką na dockerze via docker-compose
* 5.0 Należy wykorzystać axios’a oraz dodać nagłówki pod CORS

Zadanie dostępne tu: [link](https://github.com/JustynaGargula/VariousTechnologies/tree/main/Zadanie5/react-app)
Zadanie zostało zrobione na 4.5, historia commitów dostępna tu [link](https://github.com/JustynaGargula/VariousTechnologies/commits/main/Zadanie5/react-app)

## Zadanie 6 Sonar JS
Clean Code ("Zapaszki")

W ramach zadania 6 należy zredukować błędy typu: Bugs, Security
Hotspots, Vulnerabilities oraz Code Smells. Błędy powinny być efektem
statycznej analizy kodu za pomocą rozwiązania Sonar Cloud
(https://sonarcloud.io/). Dodatkowo należy w Readme.md na każdym
repozytorium dodać badge SonarCloud do powyższych czterech typów
błędów (https://sonarcloud.io/project/information?id=). Należy
sprawdzić kod projektu 5 z kodem w React’cie.

* 3.0 Należy dodać eslint w hookach gita [commit z eslintem](https://github.com/JustynaGargula/product-app-sonar-test-client/commit/00a439c4e78fdc98f77ed7683b39f6983be869ed) i [commmit z kopią precommita](https://github.com/JustynaGargula/product-app-sonar-test-client/commit/54391cbc910233a04fc6e83b399fd845d908bb43)
* 3.5 Należy wyeliminować wszystkie bugi w kodzie w Sonarze (kod
aplikacji klienckiej) [commit](https://github.com/JustynaGargula/product-app-sonar-test-client/commit/4d3cd4ef3920abe59b946e871fffb89c6e8dbc3e) 
* 4.0 Należy wyeliminować wszystkie zapaszki w kodzie w Sonarze (kod
aplikacji klienckiej)
* 4.5 Należy wyeliminować wszystkie podatności oraz błędy bezpieczeństwa
w kodzie w Sonarze (kod aplikacji klienckiej)
* 5.0 Zredukować duplikaty kodu do 0%

Zadanie dostępne tu: [link](https://github.com/JustynaGargula/product-app-sonar-test-client)

## Zadanie 7 Vapor Swift
Antywzorce

Proszę napisać prostą aplikację w Vaporze, wykorzystując Leaf jako
silnik szablonów or Fluent jako ORM. Proszę stworzyć trzy modele oraz
CRUD dla każdego z nich. Należy stworzyć model z minimum jedną
relacją. CRUD powinien mieć odzwierciedlenie w szablonach.

* 3.0 Należy stworzyć kontroler wraz z modele Produktów zgodny z CRUD w
ORM Fluent
* 3.5 Należy stworzyć szablony w Leaf
* 4.0 Należy stworzyć drugi model oraz kontroler Kategorii wraz z
relacją
* 4.5 Należy wykorzystać Redis do przechowywania danych
* 5.0 Wrzucić aplikację na heroku