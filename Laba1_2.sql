CREATE TABLE Гравець(
Код_гравця  INTEGER NOT NULL,
Імя CHAR(16) NOT NULL,
Прізвище CHAR(20) NOT NULL,
Місце_народження CHAR(20) NOT NULL,
Зріст INTEGER,
Вага INTEGER,
Громадянство CHAR(20) NOT NULL,
Дата_народження DATE NOT NULL,
PRIMARY KEY (Код_гравця )
);


CREATE TABLE Персонал(
Код_персоналу  INTEGER NOT NULL,
Імя CHAR(16) NOT NULL,
Прізвище CHAR(20) NOT NULL,
Телефон INTEGER,
Громадянство CHAR(20) NOT NULL,
Email VARCHAR(30) NOT NULL,
Дата_народження DATE NOT NULL,
PRIMARY KEY (Код_персоналу )
);


CREATE TABLE Бренд(
Код_бренду   INTEGER NOT NULL,
Назва CHAR(30) NOT NULL,
Дата_створення DATE NOT NULL,
Офіційний_сайт CHAR(50) NOT NULL,
Логотип VARBINARY(Max) NULL,
Рекламне_гасло CHAR(50) NOT NULL,
Фірмовий_персонаж CHAR(20) NOT NULL,
PRIMARY KEY (Код_бренду)
);


CREATE TABLE Команда(
Код_команди INTEGER NOT NULL,
Назва_команди CHAR(20) NOT NULL,
Офіційний_сайт VARCHAR(30) NOT NULL,
Дата_створення DATE NOT NULL,
Фото_емблеми VARBINARY(Max) NULL,
Населений_пункт CHAR(20) NOT NULL,
Прізвисько CHAR(20)  NOT NULL,
PRIMARY KEY (Код_команди)
);



CREATE TABLE Стадіон(
Код_стадіону INTEGER NOT NULL,
Назва CHAR(20) NOT NULL,
Країна CHAR(20) NOT NULL,
Місто CHAR(20) NOT NULL,
Вулиця CHAR(20),
Місткість INTEGER,
Висота INTEGER,
PRIMARY KEY (Код_стадіону)
);

CREATE TABLE Договір(
Код_договору  INTEGER NOT NULL,
Код_команди INTEGER NOT NULL,
Код_стадіону INTEGER NOT NULL,
Дата_початку DATE NOT NULL,
Дата_закінчення DATE NOT NULL,
PRIMARY KEY (Код_договору ),
CONSTRAINT ФКкоманда
FOREIGN KEY (Код_команди  )
REFERENCES Команда
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ФКстадіон
FOREIGN KEY (Код_стадіону  )
REFERENCES Стадіон
ON DELETE CASCADE
ON UPDATE CASCADE,
);

CREATE TABLE Контракт(
Код_контракту  INTEGER NOT NULL,
Код_команди INTEGER NOT NULL,
Код_персоналу INTEGER NOT NULL,
Код_бренду INTEGER NOT NULL,
Код_гравця INTEGER NOT NULL,
Дата_початку DATE NOT NULL,
Дата_закінчення DATE NOT NULL,
PRIMARY KEY (Код_контракту ),
CONSTRAINT ФК_команда
FOREIGN KEY (Код_команди  )
REFERENCES Команда
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ФКперсонал
FOREIGN KEY (Код_персоналу  )
REFERENCES Персонал
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ФКбренд
FOREIGN KEY (Код_бренду  )
REFERENCES Бренд
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ФК_гравець
FOREIGN KEY (Код_гравця  )
REFERENCES Гравець
ON DELETE CASCADE
ON UPDATE CASCADE,
);
