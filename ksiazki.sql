CREATE TABLE authors
(
    author_id  SERIAL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name  VARCHAR(255) NOT NULL
);

CREATE TABLE books
(
    book_id          SERIAL PRIMARY KEY,
    title            VARCHAR(1022)      NOT NULL,
    publication_year INT                NOT NULL,
    isbn             VARCHAR(20) UNIQUE NOT NULL,
    author_id        INT REFERENCES authors (author_id) ON DELETE CASCADE
);

CREATE TABLE reviews
(
    review_id SERIAL PRIMARY KEY,
    book_id   INT REFERENCES books (book_id) ON DELETE CASCADE,
    rating    INT CHECK (rating >= 1 AND rating <= 10),
    content   TEXT NOT NULL
);


INSERT INTO authors (first_name, last_name)
VALUES ('Jan', 'Kowalski'),
       ('Anna', 'Nowak'),
       ('Piotr', 'Zalewski'),
       ('Maria', 'Kwiatkowska'),
       ('Krzysztof', 'Wojciechowski'),
       ('Marek', 'Szymczak'),
       ('Elżbieta', 'Nowicka'),
       ('Tomasz', 'Kaczmarek'),
       ('Alicja', 'Czajka'),
       ('Paweł', 'Bąk');

INSERT INTO books (title, publication_year, isbn, author_id)
VALUES ('Java w praktyce', 2015, '978-83-123456-7-8', 1),
       ('Wprowadzenie do algorytmów', 2019, '978-83-765432-1-9', 1),
       ('Zaawansowane techniki Javy', 2022, '978-83-234567-1-4', 1),
       ('C++ dla każdego', 2018, '978-83-987654-3-2', 2),
       ('Algorytmy w C++', 2017, '978-83-234567-4-5', 2),
       ('C++ i programowanie obiektowe', 2021, '978-83-456789-0-2', 2),
       ('Python od podstaw', 2020, '978-83-567891-0-6', 3),
       ('Data Science w Pythonie', 2021, '978-83-876543-0-9', 3),
       ('Sztuczna inteligencja w Pythonie', 2023, '978-83-998765-4-1', 3),
       ('Data Science z Pythonem', 2021, '978-83-876543-2-3', 4),
       ('Wielki świat matematyki', 2020, '978-83-123987-3-9', 4),
       ('Analiza danych z R', 2019, '978-83-876543-1-0', 4),
       ('Sztuczna inteligencja', 2022, '978-83-876543-1-6', 5),
       ('Zastosowanie AI w praktyce', 2023, '978-83-998877-5-2', 5),
       ('Robotyka i AI', 2020, '978-83-876543-9-0', 5),
       ('Algorytmy w teorii i praktyce', 2021, '978-83-123456-9-4', 6),
       ('Wprowadzenie do analizy algorytmów', 2018, '978-83-234567-2-0', 6),
       ('Wielka historia matematyki', 2020, '978-83-765432-8-7', 7),
       ('Matematyka dla programistów', 2019, '978-83-876543-5-4', 7),
       ('Programowanie w Pythonie', 2022, '978-83-998877-4-9', 8),
       ('Zbiór zadań z algorytmów', 2017, '978-83-876543-7-1', 8),
       ('JavaScript w praktyce', 2021, '978-83-234567-3-1', 9),
       ('Zaawansowane JavaScript', 2022, '978-83-987654-1-4', 9),
       ('Podstawy C#', 2020, '978-83-765432-5-4', 10),
       ('C# i ASP.NET Core', 2022, '978-83-234567-5-7', 10);

INSERT INTO reviews (book_id, rating, content)
VALUES (1, 8, 'Bardzo dobra książka dla osób chcących nauczyć się Javy.'),
       (2, 10, 'Doskonale napisane, bardzo przydatne dla każdego programisty!'),
       (3, 7, 'Książka dobra, ale nieco trudniejsza. Więcej przykładów mogłoby pomóc.'),
       (4, 5, 'C++ w tej książce jest wyjaśniony w bardzo przystępny sposób.'),
       (5, 8, 'Dobra książka dla średniozaawansowanych programistów.'),
       (6, 9, 'Bardzo szczegółowe wprowadzenie do programowania obiektowego.'),
       (7, 6, 'Trochę za mało przykładów, ale ogólnie dobra książka dla początkujących.'),
       (8, 9, 'Zawiera praktyczne przykłady użycia Pythona w analizie danych.'),
       (9, 10, 'Świetna książka o AI w Pythonie, bardzo polecam!'),
       (10, 6, 'Trochę za trudne dla osób bez wcześniejszej wiedzy z Data Science.'),
       (11, 8, 'Zawiera bardzo dużo ciekawych przykładów.'),
       (12, 7, 'Solidna książka, ale tematy są rozproszone.'),
       (13, 7, 'Bardzo dobra książka o sztucznej inteligencji!'),
       (14, 10, 'Świetna książka dla osób zainteresowanych AI w praktyce.'),
       (15, 8, 'Wszystko wyjaśnione, ale brakuje bardziej złożonych przykładów.'),
       (16, 7, 'Dobry wstęp do algorytmów, ale zbyt mało przykładów praktycznych.'),
       (17, 8, 'Książka wprowadza w teorię algorytmów, ale mogłaby być bardziej przystępna.'),
       (18, 9, 'Fantastyczna książka o historii matematyki. Polecam!'),
       (19, 8, 'Ciekawa książka, ale dla niektórych może być za trudna.'),
       (20, 7, 'Dobrze napisana książka dla początkujących.'),
       (21, 8, 'Książka bardzo dobrze przedstawia różne problemy algorytmiczne.'),
       (22, 8, 'JavaScript wyjaśniony w sposób prosty, ale nieco brakuje głębi w temacie.'),
       (23, 9, 'Świetna książka, bardzo przydatna dla każdego, kto chce opanować JavaScript.'),
       (24, 9, 'Podstawy C# w tej książce są bardzo dobrze opisane.'),
       (25, 8, 'Solidna książka o C# i ASP.NET Core, ale mogłoby być więcej przykładów.'),
       (1, 9, 'Świetne wprowadzenie do Javy. Pomocne przykłady, dobra struktura książki.'),
       (2, 6, 'Bardzo dobra książka, ale zabrakło kilku bardziej złożonych przykładów.'),
       (3, 9, 'Książka dla bardziej zaawansowanych, ale bardzo dobrze wyjaśniona. Zawiera cenne informacje.'),
       (4, 7, 'Dobra książka dla początkujących, ale nieco za mało wyjaśniono tematów zaawansowanych.'),
       (5, 10, 'Świetna książka, bardzo dobra do nauki algorytmów w C++. Polecam!'),
       (6, 8, 'Książka pełna przykładów i wyjaśnień, ale czasem brakuje głębszego opisu niektórych zagadnień.'),
       (7, 8, 'Bardzo dobra książka dla początkujących, choć brakuje trochę trudniejszych przykładów.'),
       (8, 6, 'Zawiera konkretne przykłady użycia Pythona, ale mogłoby być ich więcej.'),
       (9, 8, 'Książka dobra, ale przykłady zbyt uproszczone, bardziej zaawansowani użytkownicy będą zawiedzeni.'),
       (10, 7, 'Zbyt trudna dla osób początkujących, ale dobra dla średniozaawansowanych.'),
       (11, 9, 'Bardzo przydatna książka do nauki matematyki w kontekście programowania.'),
       (12, 8, 'Książka pełna teorii, ale brakuje bardziej złożonych przykładów praktycznych.'),
       (13, 8, 'Bardzo interesująca książka o sztucznej inteligencji. Niektóre fragmenty były zbyt techniczne.'),
       (14, 9, 'Świetna książka z wieloma przykładami zastosowania AI w praktyce. Polecam!'),
       (15, 7, 'Ciekawa książka, ale nieco zbyt trudna dla osób początkujących. Brak przykładów praktycznych.'),
       (16, 3, 'Świetna książka wprowadzająca w temat algorytmów, chociaż momentami była za ogólna.'),
       (17, 9, 'Bardzo dobra książka o algorytmach. Zawiera dużo cennych wskazówek i przykładów do ćwiczeń.'),
       (18, 9, 'Rewelacyjna książka o historii matematyki. Bardzo dobrze napisana, wciągająca!'),
       (19, 8, 'Bardzo ciekawe podejście do matematyki. Dobrze się czyta, ale nieco za dużo teorii.'),
       (20, 8, 'Świetna książka dla osób, które chcą zacząć przygodę z Pythonem.'),
       (21, 9, 'Bardzo dobra książka o algorytmach. Zawiera solidne przykłady i tłumaczenie pojęć.'),
       (22, 9, 'Bardzo dobra książka o JavaScript. Jasne wyjaśnienia i wiele przykładów.'),
       (23, 8, 'Książka dobra, ale dla bardziej zaawansowanych użytkowników mogłaby zawierać więcej szczegółów.'),
       (24, 7, 'Podstawy C# dobrze opisane, ale książka mogłaby być bardziej szczegółowa w niektórych kwestiach.'),
       (25, 4, 'Bardzo dobra książka dla osób, które zaczynają z C# i ASP.NET Core.'),
       (24, 8, 'Ciekawa książka, ale niektóre przykłady mogłyby być bardziej rozbudowane.'),
       (24, 9,
        'Świetna książka do nauki C#, dobrze wyjaśnia podstawy, ale również nie brakuje bardziej zaawansowanych tematów.');

CREATE or replace VIEW top_5_authors AS
SELECT a.first_name,
       a.last_name,
       round(AVG(r.rating), 2) AS average_rating
FROM authors a
         JOIN books b ON a.author_id = b.author_id
         JOIN reviews r ON b.book_id = r.book_id
GROUP BY a.author_id
ORDER BY average_rating DESC
LIMIT 5;


SELECT a.first_name,
       a.last_name,
       COUNT(b.book_id) AS book_amount
FROM authors a
         LEFT JOIN books b ON a.author_id = b.author_id
GROUP BY a.author_id
ORDER BY book_amount DESC;


select *
from top_5_authors;
