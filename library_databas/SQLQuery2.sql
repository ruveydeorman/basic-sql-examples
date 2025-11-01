USE library;
GO
CREATE TABLE members(
  member_id INT PRIMARY KEY IDENTITY(1,1),
  tc VARCHAR(11) UNIQUE NOT NULL,
  name VARCHAR(50) NOT NULL,
  surname VARCHAR(50) NOT NULL,
  phone_number VARCHAR(15),
  email VARCHAR(50),
  register_date DATE DEFAULT GETDATE()
);

CREATE TABLE books(
 book_id INT PRIMARY KEY IDENTITY(1,1),
 isbn VARCHAR(20) UNIQUE NOT NULL,
 book_name VARCHAR(30) NOT NULL,
 author VARCHAR(30) NOT NULL,
 publish_house VARCHAR(30) ,
 publish_year INT,
 stoc_count INT DEFAULT 1

);

CREATE TABLE borrow(
  borrowing_id INT PRIMARY KEY IDENTITY(1,1),
  member_id INT,
  book_id INT,
  purchase_date DATE DEFAULT GETDATE(),
  delivery_date DATE DEFAULT GETDATE(),
  is_delivered BIT DEFAULT 0,
  FOREIGN KEY (member_id) REFERENCES members(member_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)

);








