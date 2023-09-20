CREATE TABLE IF NOT EXISTS publishers(
    Id SERIAL PRIMARY KEY,
    Name VARCHAR(30),
    City VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS readers (
    Id SERIAL PRIMARY KEY,
    CardNumber VARCHAR(30),
    FullNameReader VARCHAR(30),
    Adress VARCHAR(30),
    Contact VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS books (
    Id SERIAL PRIMARY KEY,
    Title VARCHAR(30),
    Chipher VARCHAR(30),
    YearOfPublic VARCHAR(30),
    NumberOfPages INTEGER,
    Price VARCHAR(30),
    NumberOfCopy INTEGER,
    Id_publisher INTEGER REFERENCES publishers (Id)
);
CREATE TABLE IF NOT EXISTS given_books (
    Id SERIAL PRIMARY KEY,
    Id_readers INTEGER REFERENCES readers (Id),
    Id_books INTEGER REFERENCES books (Id)
);
CREATE TABLE IF NOT EXISTS authors (
    Id SERIAL PRIMARY KEY,
    FullNameAuthor VARCHAR(30)
);
CREATE TABLE IF NOT EXISTS authors_books (
    Id SERIAL PRIMARY KEY,
    Id_authors INTEGER REFERENCES authors (Id),
    Id_books INTEGER REFERENCES books (Id)
);