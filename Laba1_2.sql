CREATE TABLE �������(
���_������  INTEGER NOT NULL,
��� CHAR(16) NOT NULL,
������� CHAR(20) NOT NULL,
̳���_���������� CHAR(20) NOT NULL,
���� INTEGER,
���� INTEGER,
������������ CHAR(20) NOT NULL,
����_���������� DATE NOT NULL,
PRIMARY KEY (���_������ )
);


CREATE TABLE ��������(
���_���������  INTEGER NOT NULL,
��� CHAR(16) NOT NULL,
������� CHAR(20) NOT NULL,
������� INTEGER,
������������ CHAR(20) NOT NULL,
Email VARCHAR(30) NOT NULL,
����_���������� DATE NOT NULL,
PRIMARY KEY (���_��������� )
);


CREATE TABLE �����(
���_������   INTEGER NOT NULL,
����� CHAR(30) NOT NULL,
����_��������� DATE NOT NULL,
���������_���� CHAR(50) NOT NULL,
������� VARBINARY(Max) NULL,
��������_����� CHAR(50) NOT NULL,
Գ������_�������� CHAR(20) NOT NULL,
PRIMARY KEY (���_������)
);


CREATE TABLE �������(
���_������� INTEGER NOT NULL,
�����_������� CHAR(20) NOT NULL,
���������_���� VARCHAR(30) NOT NULL,
����_��������� DATE NOT NULL,
����_������� VARBINARY(Max) NULL,
���������_����� CHAR(20) NOT NULL,
��������� CHAR(20)  NOT NULL,
PRIMARY KEY (���_�������)
);



CREATE TABLE ������(
���_������� INTEGER NOT NULL,
����� CHAR(20) NOT NULL,
����� CHAR(20) NOT NULL,
̳��� CHAR(20) NOT NULL,
������ CHAR(20),
̳������ INTEGER,
������ INTEGER,
PRIMARY KEY (���_�������)
);

CREATE TABLE ������(
���_��������  INTEGER NOT NULL,
���_������� INTEGER NOT NULL,
���_������� INTEGER NOT NULL,
����_������� DATE NOT NULL,
����_��������� DATE NOT NULL,
PRIMARY KEY (���_�������� ),
CONSTRAINT ���������
FOREIGN KEY (���_�������  )
REFERENCES �������
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ��������
FOREIGN KEY (���_�������  )
REFERENCES ������
ON DELETE CASCADE
ON UPDATE CASCADE,
);

CREATE TABLE ��������(
���_���������  INTEGER NOT NULL,
���_������� INTEGER NOT NULL,
���_��������� INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
���_������ INTEGER NOT NULL,
����_������� DATE NOT NULL,
����_��������� DATE NOT NULL,
PRIMARY KEY (���_��������� ),
CONSTRAINT ��_�������
FOREIGN KEY (���_�������  )
REFERENCES �������
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ����������
FOREIGN KEY (���_���������  )
REFERENCES ��������
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT �������
FOREIGN KEY (���_������  )
REFERENCES �����
ON DELETE CASCADE
ON UPDATE CASCADE,
CONSTRAINT ��_�������
FOREIGN KEY (���_������  )
REFERENCES �������
ON DELETE CASCADE
ON UPDATE CASCADE,
);
