CREATE DATABASE Threadly_Inc;
USE Threadly_Inc;

-- User_Roles table first, as it's referenced by the User table
CREATE TABLE Employee_Roles (
    role_ID  VARCHAR(100) PRIMARY KEY,
    role_name VARCHAR(100) NOT NULL,
    permissions VARCHAR(255) NOT NULL
);

-- Employee_Roles Table
INSERT INTO Employee_Roles (role_ID, role_name, permissions)
VALUES
('emr1', 'Manager', 'Full Access to all company data and settings'),
('emr2', 'Sales Representative', 'Access to customer data, sales reports, and order management'),
('emr3', 'HR Specialist', 'Access to employee data, payroll, and performance reviews'),
('emr4', 'IT Support', 'Access to system settings, user management, and technical support tools'),
('emr5', 'Warehouse Staff', 'Access to inventory data, shipping information, and product stock levels'),
('emr6', 'Finance Analyst', 'Access to financial reports, budgeting tools, and tax information');


CREATE TABLE Department (
    department_id  VARCHAR(100) PRIMARY KEY,  -- Unique ID for each department
    department_name VARCHAR(100) NOT NULL         -- Name of the department
);

-- Department Table 
INSERT INTO Department (department_id, department_name)
VALUES
('dep1', 'Sales'),
('dep2', 'HR'),
('dep3', 'IT'),
('dep4', 'Operations'),
('dep5', 'Finance');

-- general user table created for normalization
CREATE TABLE User (
    user_id  VARCHAR(100) PRIMARY KEY ,
    user_name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL ,
    phone_number VARCHAR(15) NOT NULL,
    address VARCHAR(255),
    user_type ENUM('customer', 'employee', 'supplier', 'transporter') NOT NULL
);

--- User Table
INSERT INTO User (user_id, user_name, email, phone_number, address, user_type)
VALUES
('emp1', 'Ghina Fahim Shaikh', 'alice1@example.com', '1234567890', '123 Elm Street', 'employee'),
('emp2', 'Muhammad Zain Aziz', 'bob2@example.com', '1234567891', '456 Maple Avenue', 'employee'),
('emp3', 'Salwa Niaz Preet', 'charlie3@example.com', '1234567892', '789 Oak Lane', 'employee'),
('emp4', 'Wan-Chaun Chang', 'david4@example.com', '1234567893', '321 Pine Drive', 'employee'),
('emp5', 'Sayedyounes Sayedolhossein', 'emily5@example.com', '1234567894', '101 Cedar Way', 'employee'),
('emp6', 'Sai Shripad Achutuni', 'frank6@example.com', '1234567895', '789 Birch Blvd', 'employee'),
('emp7', 'Fatima Zahra Hashmi', 'george7@example.com', '1234567896', '202 Walnut Road', 'employee'),
('emp8', 'Ibrahim Khalil Ullah', 'helen8@example.com', '1234567897', '303 Cherry Street', 'employee'),
('emp9', 'Anaya Noor Siddiqui', 'ian9@example.com', '1234567898', '404 Sycamore Lane', 'employee'),
('emp10', 'Liam O''Connor', 'jack10@example.com', '1234567899', '505 Willow Way', 'employee'),
('emp11', 'Maria Gabriela Sánchez', 'kate11@example.com', '1234567800', '606 Poplar Circle', 'employee'),
('emp12', 'Ahmed Waheed Al-Mansoori', 'luke12@example.com', '1234567801', '707 Aspen Avenue', 'employee'),
('emp13', 'Ayesha Mubeen Farooq', 'mary13@example.com', '1234567802', '808 Dogwood Lane', 'employee'),
('emp14', 'Chen Wei Ting', 'nate14@example.com', '1234567803', '909 Redwood Blvd', 'employee'),
('emp15', 'Zainab Abdullah Al-Hajri', 'olivia15@example.com', '1234567804', '1010 Laurel Drive', 'employee'),
('emp16', 'Omar Ahmed Abdelrahman', 'paul16@example.com', '1234567805', '1111 Magnolia St', 'employee'),
('cu4', 'John Carter', 'john10@example.com', '1234567899', '777 Poplar Dr', 'customer'),
('cu5', 'Kate Winslet', 'kate11@example.com', '1234567800', '999 Cypress St', 'customer'),
('cu6', 'Leo King', 'leo12@example.com', '1234567801', '432 Fir Rd', 'customer'),
('cu7', 'Megan Fox', 'megan13@example.com', '1234567802', '321 Redwood Pl', 'customer'),
('cu8', 'Nora Simon', 'nora14@example.com', '1234567803', '654 Beech Cir', 'customer'),
('cu9', 'Oscar Wilde', 'oscar15@example.com', '1234567804', '876 Palm Ave', 'customer'),
('cu10', 'Paul Harris', 'paul16@example.com', '1234567805', '123 Sequoia Dr', 'customer'),
('cu11', 'Quincy Jones', 'quincy17@example.com', '1234567806', '777 Oakwood Ct', 'customer'),
('cu12', 'Rachel Green', 'rachel18@example.com', '1234567807', '456 Maple Ave', 'customer'),
('cu13', 'Samuel Jackson', 'samuel19@example.com', '1234567808', '888 Sycamore St', 'customer'),
('cu14', 'Tina Fey', 'tina20@example.com', '1234567809', '999 Birch Rd', 'customer'),
('cu15', 'Uma Thurman', 'uma21@example.com', '1234567810', '321 Cherry Ln', 'customer'),
('cu16', 'Victor Hugo', 'victor22@example.com', '1234567811', '654 Walnut St', 'customer'),
('cu17', 'Wendy Darling', 'wendy23@example.com', '1234567812', '876 Hickory Blvd', 'customer'),
('cu18', 'Xander Cage', 'xander24@example.com', '1234567813', '123 Mulberry Cir', 'customer'),
('cu19', 'Yasmin Lopez', 'yasmin25@example.com', '1234567814', '456 Cedar Way', 'customer'),
('cu20', 'Zane Lowe', 'zane26@example.com', '1234567815', '789 Elm St', 'customer'),
('cu21', 'Abby Lane', 'abby27@example.com', '1234567816', '101 Oak Ave', 'customer'),
('cu22', 'Brian Clark', 'brian28@example.com', '1234567817', '777 Maple Cir', 'customer'),
('cu23', 'Cindy Lou', 'cindy29@example.com', '1234567818', '432 Willow Pl', 'customer'),
('cu24', 'Derek Hall', 'derek30@example.com', '1234567819', '321 Palm Ln', 'customer'),
('sup1', 'Ella Stone', 'ella31@example.com', '1234567820', '654 Ash Ct', 'supplier'),
('sup2', 'Fred Wilson', 'fred32@example.com', '1234567821', '876 Poplar Dr', 'supplier'),
('sup3', 'Gina Davis', 'gina33@example.com', '1234567822', '123 Beech Cir', 'supplier'),
('sup4', 'Hank Moore', 'hank34@example.com', '1234567823', '777 Fir Ln', 'supplier'),
('sup5', 'Ivy Adams', 'ivy35@example.com', '1234567824', '456 Redwood Blvd', 'supplier'),
('sup6', 'Jack Frost', 'jack36@example.com', '1234567825', '789 Sequoia Pl', 'supplier'),
('sup7', 'Kara Knight', 'kara37@example.com', '1234567826', '321 Cypress St', 'supplier'),
('sup8', 'Liam Payne', 'liam38@example.com', '1234567827', '654 Willow Rd', 'supplier'),
('sup9', 'Mila Kunis', 'mila39@example.com', '1234567828', '876 Maple Ct', 'supplier'),
('sup10', 'Noah Reed', 'noah40@example.com', '1234567829', '123 Palm Blvd', 'supplier'),
('tr1', 'Olivia Smith', 'olivia41@example.com', '1234567830', '777 Hickory Dr', 'transporter'),
('tr2', 'Patrick Neil', 'patrick42@example.com', '1234567831', '456 Mulberry Cir', 'transporter'),
('tr3', 'Quinn Harper', 'quinn43@example.com', '1234567832', '789 Cherry Ln', 'transporter'),
('tr4', 'Riley West', 'riley44@example.com', '1234567833', '321 Oak Ave', 'transporter'),
('tr5', 'Sophia Black', 'sophia45@example.com', '1234567834', '654 Maple Cir', 'transporter'),
('tr6', 'Thomas Grey', 'thomas46@example.com', '1234567835', '876 Willow Pl', 'transporter'),
('tr7', 'Ursula Vine', 'ursula47@example.com', '1234567836', '123 Ash Ct', 'transporter'),
('tr8', 'Victor Lane', 'victor48@example.com', '1234567837', '777 Poplar Blvd', 'transporter'),
('tr9', 'Will Young', 'will49@example.com', '1234567838', '432 Beech Cir', 'transporter'),
('tr10', 'Xenia Fox', 'xenia50@example.com', '1234567839', '321 Redwood Ln', 'transporter');



 -- employee table created separately to conform to 2NF and 3NF
CREATE TABLE Employee (
    user_id  VARCHAR(100) PRIMARY KEY,
    Role_id  VARCHAR(100) NOT NULL,
    department_id  VARCHAR(100) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES User(user_id),
    FOREIGN KEY (role_id) REFERENCES Employee_Roles(role_id)
        ON UPDATE CASCADE,                              -- Automatically update Role_ID if changed
    FOREIGN KEY (department_id) REFERENCES Department(department_id)
		ON UPDATE CASCADE                              -- Automatically update department_id if department is updated
);

-- Employee Table
INSERT INTO Employee (user_id, role_id, department_id)
VALUES
('emp1', 'emr1', 'dep2'), 
('emp2', 'emr2', 'dep1'),
('emp3', 'emr3', 'dep2'),
('emp4', 'emr4', 'dep3'), 
('emp5', 'emr5', 'dep4'), 
('emp6', 'emr6', 'dep5'),
('emp7', 'emr3', 'dep4'),
('emp8', 'emr4', 'dep1'),
('emp9', 'emr1', 'dep3'),
('emp10', 'emr4', 'dep5'),
('emp11', 'emr5', 'dep4'),
('emp12', 'emr2', 'dep5'),
('emp13', 'emr3', 'dep2'),
('emp14', 'emr6', 'dep1'),
('emp15', 'emr3', 'dep3'),
('emp16', 'emr4', 'dep2');





-- product relevant tables to be create prior to sales as they link to sales_order_details table
-- Create Product_Category table, needed for Product
CREATE TABLE Product_Category (
    Category_ID  VARCHAR(100) PRIMARY KEY,
    Category_Name VARCHAR(100),
    Category_Description TEXT
);

-- product_Category table
INSERT INTO Product_Category (Category_ID, Category_Name, Category_Description)
VALUES
('ca1', 'Dresses', 'Vintage bohemian, retro, 80s, and 90s style dresses'),
('ca2', 'Tops & Blouses', 'Classic button-ups, graphic tees, and embroidered tops'),
('ca3', 'Outerwear', 'Stylish outerwear including leather jackets, retro windbreakers, and denim jackets'),
('ca4', 'Bottoms', 'Wide-leg pants, high-waisted jeans, and vintage skirts');



CREATE TABLE Product_Subcategory (
    subcategory_ID  VARCHAR(100) PRIMARY KEY,
    subcategory_name VARCHAR(255) NOT NULL,
	subcategory_description TEXT,
    category_ID  VARCHAR(100),
    FOREIGN KEY (category_ID) REFERENCES product_category(category_ID)
);

-- product Subcategory table
INSERT INTO Product_Subcategory (subcategory_ID, subcategory_name, subcategory_description, category_ID)
VALUES
('sub1', 'Vintage Dresses', 'Flowy and bohemian-style dresses', 'ca1'),
('sub2', 'Retro Dresses', 'Dresses inspired by 80s and 90s fashion', 'ca1'),
('sub3', 'Evening Dresses', 'Elegant dresses for formal events', 'ca1'),
('sub4', 'Summer Dresses', 'Light and airy dresses for summer', 'ca1'),
('sub5', 'Party Dresses', 'Stylish dresses for parties', 'ca1'),
('sub6', 'Maxi Dresses', 'Floor-length dresses for casual or formal wear', 'ca1'),
('sub7', 'Mini Dresses', 'Short dresses for casual outings', 'ca1'),
('sub8', 'Cocktail Dresses', 'Dresses for semi-formal events', 'ca1'),
('sub9', 'Work Dresses', 'Dresses designed for professional settings', 'ca1'),
('sub10', 'Casual Dresses', 'Comfortable dresses for everyday wear', 'ca1'),
('sub11', 'Classic Button-Ups', 'Timeless button-up shirts for all occasions', 'ca2'),
('sub12', 'Graphic Tees', 'Casual T-shirts with bold graphics', 'ca2'),
('sub13', 'Embroidered Tops', 'Tops with intricate embroidery', 'ca2'),
('sub14', 'Tank Tops', 'Sleeveless tops for summer', 'ca2'),
('sub15', 'Blouses', 'Elegant blouses for formal and casual settings', 'ca2'),
('sub16', 'Crop Tops', 'Trendy short-length tops', 'ca2'),
('sub17', 'Peplum Tops', 'Flared tops for a stylish look', 'ca2'),
('sub18', 'Off-Shoulder Tops', 'Tops with a shoulder-baring design', 'ca2'),
('sub19', 'Tunic Tops', 'Loose-fitting tops for comfort and style', 'ca2'),
('sub20', 'Knitted Sweaters', 'Warm knitted tops for winter', 'ca2'),
('sub21', 'Leather Jackets', 'Classic leather jackets', 'ca3'),
('sub22', 'Retro Windbreakers', 'Windbreakers inspired by retro styles', 'ca3'),
('sub23', 'Denim Jackets', 'Versatile denim outerwear', 'ca3'),
('sub24', 'Blazers', 'Tailored jackets for formal settings', 'ca3'),
('sub25', 'Coats', 'Warm and stylish coats for winter', 'ca3'),
('sub26', 'Trench Coats', 'Long coats with a classic design', 'ca3'),
('sub27', 'Puffer Jackets', 'Quilted jackets for cold weather', 'ca3'),
('sub28', 'Parkas', 'Heavy-duty jackets for winter', 'ca3'),
('sub29', 'Raincoats', 'Waterproof jackets for rainy days', 'ca3'),
('sub30', 'Faux Fur Coats', 'Coats with soft faux fur material', 'ca3'),
('sub31', 'Wide-Leg Pants', 'Comfortable wide-leg pants for casual and formal wear', 'ca4'),
('sub32', 'High-Waisted Jeans', 'Vintage-inspired high-waisted denim', 'ca4'),
('sub33', 'Vintage Skirts', 'Skirts with retro patterns and styles', 'ca4'),
('sub34', 'Palazzo Pants', 'Flowy and stylish palazzo pants', 'ca4'),
('sub35', 'Culottes', 'Wide-leg cropped pants', 'ca4'),
('sub36', 'Pencil Skirts', 'Slim-fit skirts for office and formal wear', 'ca4'),
('sub37', 'A-Line Skirts', 'Flared skirts for a flattering silhouette', 'ca4'),
('sub38', 'Cargo Pants', 'Pants with multiple pockets for utility and style', 'ca4'),
('sub39', 'Shorts', 'Casual shorts for summer', 'ca4'),
('sub40', 'Joggers', 'Comfortable and casual pants for lounging', 'ca4'),
('sub41', 'Chiffon Dresses', 'Lightweight dresses for summer occasions', 'ca1'),
('sub42', 'Graphic Hoodies', 'Hoodies with bold graphic designs', 'ca3'),
('sub43', 'Bomber Jackets', 'Short and stylish jackets for casual wear', 'ca3'),
('sub44', 'Sweater Dresses', 'Warm dresses for chilly weather', 'ca1'),
('sub45', 'Plaid Skirts', 'Skirts with classic plaid patterns', 'ca4'),
('sub46', 'Oversized Tops', 'Relaxed-fit tops for a casual look', 'ca2'),
('sub47', 'Quilted Jackets', 'Warm quilted jackets for winter', 'ca3'),
('sub48', 'Denim Shorts', 'Casual shorts made of denim fabric', 'ca4'),
('sub49', 'Wrap Dresses', 'Dresses with a wrap-around design', 'ca1'),
('sub50', 'Halter Tops', 'Sleeveless tops with a halter neck design', 'ca2');




-- Create Product table, referencing Product_Category
CREATE TABLE Product (
    product_ID  VARCHAR(100) PRIMARY KEY,
	product_name VARCHAR(100),
    product_description TEXT,
    subcategory_ID  VARCHAR(100),
    product_price DECIMAL(10,2),
    product_margin DECIMAL(5,2),   #Product margin as percentage, used to calculate sales price
    FOREIGN KEY (subcategory_ID) REFERENCES product_subcategory(subcategory_ID) ON DELETE CASCADE
);

-- product table
INSERT INTO Product (product_ID, product_name, product_description, subcategory_ID, product_price, product_margin)
VALUES
('pr1', 'Bohemian Floral Dress', 'Flowy dress with floral bohemian patterns', 'sub2', 21, 15),
('pr2', 'Polka Dot Retro Dress', 'Retro-style dress with polka dots', 'sub1', 20.99, 20),
('pr3', 'Black Evening Gown', 'Elegant gown for formal occasions', 'sub9', 1200, 25),
('pr4', 'Summer Maxi Dress', 'Light maxi dress perfect for summer', 'sub6', 199.99, 10),
('pr5', 'Sequin Party Dress', 'Shimmery dress for party events', 'sub36', 29.99, 12),
('pr6', 'Printed Maxi Dress', 'Floor-length maxi dress with abstract prints', 'sub46', 45, 8),
('pr7', 'Red Mini Dress', 'Trendy red mini dress for casual outings', 'sub34', 1100, 18),
('pr8', 'Elegant Cocktail Dress', 'Stylish dress for semi-formal gatherings', 'sub31', 150, 20),
('pr9', 'Office Pencil Dress', 'Professional pencil-style work dress', 'sub29', 25, 35),
('pr10', 'Striped Casual Dress', 'Comfortable dress with striped patterns', 'sub13', 120, 28),
('pr11', 'White Button-Up Shirt', 'Classic white shirt for work or casual settings', 'sub2', 1500, 18),
('pr12', 'Band Graphic Tee', 'T-shirt with bold band graphics', 'sub1', 999.99, 22),
('pr13', 'Boho Embroidered Top', 'Top with intricate embroidery for a boho look', 'sub8', 650, 12),
('pr14', 'Casual Tank Top', 'Sleeveless top for casual summer wear', 'sub6', 300, 10),
('pr15', 'Silk Blouse', 'Elegant silk blouse for formal occasions', 'sub35', 19.99, 15),
('pr16', 'Black Crop Top', 'Trendy black crop top for parties', 'sub46', 85, 10),
('pr17', 'Flared Peplum Top', 'Stylish top with a flared hem', 'sub34', 200, 25),
('pr18', 'Off-Shoulder Top', 'Shoulder-baring top for a casual look', 'sub31', 70, 22),
('pr19', 'Printed Tunic Top', 'Loose-fitting tunic top with prints', 'sub26', 40, 30),
('pr20', 'Knitted Wool Sweater', 'Warm sweater made of knitted wool', 'sub29', 180, 35),
('pr21', 'Classic Leather Jacket', 'Stylish leather jacket for a modern look', 'sub2', 1200, 16),
('pr22', 'Retro Colorblock Windbreaker', 'Bold colorblock windbreaker inspired by retro designs', 'sub1', 799.99, 25),
('pr23', 'Relaxed-Fit Denim Jacket', 'Versatile denim jacket for layering', 'sub9', 550, 15),
('pr24', 'Tailored Black Blazer', 'Formal blazer with a sleek design', 'sub6', 350, 12),
('pr25', 'Woolen Winter Coat', 'Warm coat perfect for cold weather', 'sub40', 30, 18),
('pr26', 'Beige Trench Coat', 'Classic long trench coat', 'sub46', 60, 12),
('pr27', 'Puffer Jacket', 'Quilted puffer jacket for chilly days', 'sub34', 35, 30),
('pr28', 'Heavy-Duty Parka', 'Durable parka for extreme winters', 'sub32', 100, 22),
('pr29', 'Waterproof Raincoat', 'Raincoat designed to withstand heavy rain', 'sub29', 45, 28),
('pr30', 'Faux Fur Coat', 'Soft coat made with faux fur', 'sub40', 250, 40),
('pr31', 'Beige Wide-Leg Pants', 'Relaxed wide-leg pants for casual wear', 'sub2', 1600, 14),
('pr32', 'Vintage High-Waisted Jeans', 'Retro-style high-waisted denim jeans', 'sub1', 699.99, 20),
('pr33', 'Checkered Vintage Skirt', 'Classic skirt with checkered patterns', 'sub8', 350, 10),
('pr34', 'Printed Palazzo Pants', 'Flowy pants with vibrant prints', 'sub6', 400, 12),
('pr35', 'Casual Culottes', 'Comfortable cropped wide-leg pants', 'sub36', 15, 18),
('pr36', 'Office Pencil Skirt', 'Slim-fit skirt for a professional look', 'sub46', 120, 15),
('pr37', 'A-Line Floral Skirt', 'Flared skirt with floral patterns', 'sub34', 45, 25),
('pr38', 'Cargo Pants', 'Utility pants with multiple pockets', 'sub31', 80, 18),
('pr39', 'Denim Shorts', 'Classic shorts made from denim fabric', 'sub26', 30, 40),
('pr40', 'Casual Joggers', 'Comfortable jogger pants for lounging', 'sub29', 75, 35),
('pr41', 'Chiffon Maxi Dress', 'Elegant lightweight chiffon maxi dress', 'sub2', 1100, 20),
('pr42', 'Graphic Hoodie', 'Cozy hoodie with bold graphic prints', 'sub1', 499.99, 25),
('pr43', 'Olive Bomber Jacket', 'Trendy short bomber jacket', 'sub9', 250, 15),
('pr44', 'Woolen Sweater Dress', 'Warm dress for winter', 'sub6', 300, 10),
('pr45', 'Plaid A-Line Skirt', 'Classic plaid skirt with a flared silhouette', 'sub36', 12, 18),
('pr46', 'Oversized Knitted Top', 'Relaxed-fit knitted top for comfort', 'sub46', 120, 20),
('pr47', 'Quilted Winter Jacket', 'Warm jacket with a quilted design', 'sub34', 25, 30),
('pr48', 'Casual Denim Shorts', 'Denim shorts for summer outings', 'sub31', 40, 25),
('pr49', 'Floral Wrap Dress', 'Elegant wrap dress with floral patterns', 'sub29', 20, 30),
('pr50', 'Halter Neck Top', 'Trendy sleeveless top with a halter neck design', 'sub40', 400, 50);



CREATE TABLE Supplier_Details (
    supplier_id  VARCHAR(100) ,  -- Unique ID for each supplier detail
    user_id  VARCHAR(100) NOT NULL,                               -- Foreign key to the User table (the supplier)
    product_id  VARCHAR(100),                                     -- Foreign key to Product (if applicable)
    FOREIGN KEY (user_id) REFERENCES User(User_ID) 
        ON DELETE CASCADE ON UPDATE CASCADE,            -- Reference to supplier in the User table
    FOREIGN KEY (product_id) REFERENCES Product(product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE             -- Reference to Product (if applicable)
);

-- Supplier details
INSERT INTO Supplier_Details (supplier_id, user_id, product_id)
VALUES
('su1', 'sup1', 'pr1'),
('su3', 'sup3', 'pr2'),
('su4', 'sup5', 'pr3'),
('su6', 'sup4', 'pr4'),
('su2', 'sup7', 'pr5'),
('su9', 'sup8', 'pr6'),
('su10', 'sup6', 'pr7'),
('su7', 'sup9', 'pr8'),
('su5', 'sup1', 'pr9'),
('su6', 'sup3', 'pr10'),
('su10', 'sup5', 'pr11'),
('su1', 'sup8', 'pr12'),
('su2', 'sup6', 'pr13'),
('su5', 'sup9', 'pr14'),
('su9', 'sup1', 'pr15'),
('su3', 'sup1', 'pr16'),
('su7', 'sup5', 'pr17'),
('su4', 'sup8', 'pr18'),
('su6', 'sup6', 'pr19'),
('su1', 'sup9', 'pr20'),
('su10', 'sup1', 'pr21'),
('su2', 'sup3', 'pr22'),
('su7', 'sup5', 'pr23'),
('su5', 'sup8', 'pr24'),
('su9', 'sup6', 'pr25'),
('su3', 'sup4', 'pr26'),
('su4', 'sup5', 'pr27'),
('su10', 'sup8', 'pr28'),
('su1', 'sup6', 'pr29'),
('su2', 'sup10', 'pr30'),
('su6', 'sup8', 'pr31'),
('su7', 'sup6', 'pr32'),
('su8', 'sup9', 'pr33'),
('su9', 'sup10', 'pr34'),
('su4', 'sup6', 'pr35'),
('su5', 'sup4', 'pr36'),
('su10', 'sup5', 'pr37'),
('su1', 'sup8', 'pr38'),
('su2', 'sup4', 'pr39'),
('su6', 'sup5', 'pr40'),
('su7', 'sup3', 'pr41'),
('su9', 'sup6', 'pr42'),
('su3', 'sup9', 'pr43'),
('su5', 'sup1', 'pr44'),
('su8', 'sup3', 'pr45'),
('su4', 'sup5', 'pr46'),
('su1', 'sup9', 'pr47'),
('su6', 'sup3', 'pr48'),
('su2', 'sup10', 'pr49'),
('su10', 'sup3', 'pr50');


-- Columns relevant to sales 
CREATE TABLE Discount_Slabs (
    discount_id  VARCHAR(100) PRIMARY KEY ,  -- Unique ID for each discount slab. AUTO_INCREMENT ensures that each record automatically gets a unique discount_id without manual intervention.
    min_total_amount DECIMAL(10, 2) NOT NULL,    -- Minimum total amount required for this discount
    max_total_amount DECIMAL(10, 2) NULL,             -- Maximum total amount for this discount (NULL means no upper limit)
    discount_rate DECIMAL(5, 2) NOT NULL         -- Discount rate (percentage), must be specified
);

-- Discount Slabs
INSERT INTO Discount_Slabs (discount_id, min_total_amount, max_total_amount, discount_rate)
VALUES
('di1', 0.00, 100.00, 5.00),    -- Discount for orders between $0 and $100: 5%
('di2', 100.01, 300.00, 10.00), -- Discount for orders between $100.01 and $300: 10%
('di3', 300.01, 500.00, 15.00), -- Discount for orders between $300.01 and $500: 15%
('di4', 500.01, 1000.00, 20.00), -- Discount for orders between $500.01 and $1000: 20%
('di5', 1000.01, 2000.00, 25.00); -- Discount for orders over $1000: 25%


CREATE TABLE Sales (
    sales_order_id  VARCHAR(100) PRIMARY KEY,  -- Unique ID for each sales order
    customer_id  VARCHAR(100) NOT NULL,                           -- Foreign key to Users table (tracks who made the sale)
    order_date DATE NOT NULL,                       -- Date when the order was placed
    total_amount DECIMAL(10, 2) NOT NULL,           -- Total sales amount before discounts and taxes
    discount_applied DECIMAL(5, 2) DEFAULT 0 NOT NULL, -- IN % Discount applied to the sale (defaults to 0)
    state_tax_applied DECIMAL(5, 2) DEFAULT 6.25 NOT NULL, -- State tax % amount (defaults to 0)
    local_tax_applied DECIMAL(5, 2) DEFAULT 2.00 NOT NULL, -- Local tax % amount (defaults to 0)
    FOREIGN KEY (customer_id) REFERENCES User(user_id) -- Links to the Users table
);

-- sales table 
INSERT INTO Sales (sales_order_id, customer_id, order_date, total_amount, discount_applied, state_tax_applied, local_tax_applied)
VALUES
('sa1', 'cu7', '2024-01-01', 2000.00, 5.00, 6.25, 2.00),     
('sa2', 'cu19', '2024-01-02', 500.00, 5.00, 6.25, 2.00),   
('sa3', 'cu4', '2024-01-03', 300.00, 10.00, 6.25, 2.00),    
('sa4', 'cu15', '2024-01-04', 700.00, 15.00, 6.25, 2.00),   
('sa5', 'cu11', '2024-01-05', 1000.00, 10.00, 6.25, 2.00),  
('sa6', 'cu24', '2024-01-06', 150.00, 15.00, 6.25, 2.00),     
('sa7', 'cu8', '2024-01-07', 850.00, 25.00, 6.25, 2.00),   
('sa8', 'cu5', '2024-01-08', 450.00, 25.00, 6.25, 2.00),    
('sa9', 'cu21', '2024-01-09', 300.00, 10.00, 6.25, 2.00),    
('sa10', 'cu12', '2024-01-10', 2000.00, 20.00, 6.25, 2.00), 
('sa11', 'cu5', '2024-01-11', 1200.00, 10.00, 6.25, 2.00), 
('sa12', 'cu17', '2024-01-12', 400.00, 10.00, 6.25, 2.00),   
('sa13', 'cu20', '2024-01-13', 350.00, 15.00, 6.25, 2.00),     
('sa14', 'cu6', '2024-01-14', 275.00, 20.00, 6.25, 2.00),     
('sa15', 'cu23', '2024-01-15', 625.00, 25.00, 6.25, 2.00),    
('sa16', 'cu4', '2024-01-16', 1800.00, 10.00, 6.25, 2.00), 
('sa17', 'cu13', '2024-01-17', 230.00, 20.00, 6.25, 2.00),    
('sa18', 'cu7', '2024-01-18', 760.00, 5.00, 6.25, 2.00),    
('sa19', 'cu10', '2024-01-19', 980.00, 10.00, 6.25, 2.00),   
('sa20', 'cu18', '2024-01-20', 400.00, 10.00, 6.25, 2.00),    
('sa21', 'cu9', '2024-01-21', 250.00, 25.00, 6.25, 2.00),     
('sa22', 'cu22', '2024-01-22', 1700.00, 10.00, 6.25, 2.00),  
('sa23', 'cu14', '2024-01-23', 650.00, 15.00, 6.25, 2.00),   
('sa24', 'cu16', '2024-01-24', 200.00, 20.00, 6.25, 2.00),    
('sa25', 'cu8', '2024-01-25', 1400.00, 10.00, 6.25, 2.00),   
('sa26', 'cu7', '2024-01-26', 320.00, 25.00, 6.25, 2.00),      
('sa27', 'cu19', '2024-01-27', 920.00, 20.00, 6.25, 2.00),    
('sa28', 'cu24', '2024-01-28', 500.00, 5.00, 6.25, 2.00),   
('sa29', 'cu5', '2024-01-29', 300.00, 15.00, 6.25, 2.00),   
('sa30', 'cu9', '2024-01-30', 800.00, 20.00, 6.25, 2.00),   
('sa31', 'cu8', '2024-01-31', 1900.00, 10.00, 6.25, 2.00),  
('sa32', 'cu20', '2024-02-01', 2100.00, 10.00, 6.25, 2.00), 
('sa33', 'cu11', '2024-02-02', 170.00, 10.00, 6.25, 2.00),     
('sa34', 'cu10', '2024-02-03', 760.00, 15.00, 6.25, 2.00),   
('sa35', 'cu18', '2024-02-04', 1400.00, 10.00, 6.25, 2.00),  
('sa36', 'cu4', '2024-02-05', 300.00, 20.00, 6.25, 2.00),    
('sa37', 'cu23', '2024-02-06', 500.00, 5.00, 6.25, 2.00),   
('sa38', 'cu6', '2024-02-07', 2500.00, 5.00, 6.25, 2.00),  
('sa39', 'cu14', '2024-02-08', 120.00, 10.00, 6.25, 2.00),      
('sa40', 'cu13', '2024-02-09', 2000.00, 20.00, 6.25, 2.00), 
('sa41', 'cu10', '2024-02-10', 430.00, 20.00, 6.25, 2.00),   
('sa42', 'cu15', '2024-02-11', 870.00, 25.00, 6.25, 2.00),   
('sa43', 'cu22', '2024-02-12', 160.00, 10.00, 6.25, 2.00),     
('sa44', 'cu16', '2024-02-13', 700.00, 5.00, 6.25, 2.00),    
('sa45', 'cu12', '2024-02-14', 1000.00, 10.00, 6.25, 2.00),  
('sa46', 'cu21', '2024-02-15', 1100.00, 10.00, 6.25, 2.00), 
('sa47', 'cu9', '2024-02-16', 240.00, 20.00, 6.25, 2.00),     
('sa48', 'cu17', '2024-02-17', 320.00, 25.00, 6.25, 2.00),     
('sa49', 'cu5', '2024-02-18', 750.00, 15.00, 6.25, 2.00), 
('sa50', 'cu7', '2024-02-19', 1300.00, 10.00, 6.25, 2.00);
 


CREATE TABLE Sales_Payment_Status (
    payment_status_id  VARCHAR(100) PRIMARY KEY,  -- Unique ID for each payment status record
    sales_order_id  VARCHAR(100) NOT NULL,                       -- Foreign key to Sales table
    payment_status VARCHAR(50) NOT NULL,               -- Payment status: 'Fully Paid', 'Partially Paid', 'Pending'
    FOREIGN KEY (sales_order_id) REFERENCES Sales(sales_order_id) ON DELETE CASCADE
);

-- Sales_Payment_Status Table 
INSERT INTO Sales_Payment_Status (payment_status_id, sales_order_id, payment_status)
VALUES
('sps1', 'sa1', 'Fully Paid'),
('sps2', 'sa2', 'Partially Paid'),
('sps3', 'sa3', 'Pending'),
('sps4', 'sa4', 'Fully Paid'),
('sps5', 'sa5', 'Partially Paid'),
('sps6', 'sa6', 'Pending'),
('sps7', 'sa7', 'Fully Paid'),
('sps8', 'sa8', 'Partially Paid'),
('sps9', 'sa9', 'Pending'),
('sps10', 'sa10', 'Fully Paid'),
('sps11', 'sa11', 'Partially Paid'),
('sps12', 'sa12', 'Pending'),
('sps13', 'sa13', 'Fully Paid'),
('sps14', 'sa14', 'Partially Paid'),
('sps15', 'sa15', 'Pending'),
('sps16', 'sa16', 'Fully Paid'),
('sps17', 'sa17', 'Partially Paid'),
('sps18', 'sa18', 'Pending'),
('sps19', 'sa19', 'Fully Paid'),
('sps20', 'sa20', 'Partially Paid'),
('sps21', 'sa21', 'Pending'),
('sps22', 'sa22', 'Fully Paid'),
('sps23', 'sa23', 'Partially Paid'),
('sps24', 'sa24', 'Pending'),
('sps25', 'sa25', 'Fully Paid'),
('sps26', 'sa26', 'Partially Paid'),
('sps27', 'sa27', 'Pending'),
('sps28', 'sa28', 'Fully Paid'),
('sps29', 'sa29', 'Partially Paid'),
('sps30', 'sa30', 'Pending'),
('sps31', 'sa31', 'Fully Paid'),
('sps32', 'sa32', 'Partially Paid'),
('sps33', 'sa33', 'Pending'),
('sps34', 'sa34', 'Fully Paid'),
('sps35', 'sa35', 'Partially Paid'),
('sps36', 'sa36', 'Pending'),
('sps37', 'sa37', 'Fully Paid'),
('sps38', 'sa38', 'Partially Paid'),
('sps39', 'sa39', 'Pending'),
('sps40', 'sa40', 'Fully Paid'),
('sps41', 'sa41', 'Partially Paid'),
('sps42', 'sa42', 'Pending'),
('sps43', 'sa43', 'Fully Paid'),
('sps44', 'sa44', 'Partially Paid'),
('sps45', 'sa45', 'Pending'),
('sps46', 'sa46', 'Fully Paid'),
('sps47', 'sa47', 'Partially Paid'),
('sps48', 'sa48', 'Pending'),
('sps49', 'sa49', 'Fully Paid'),
('sps50', 'sa50', 'Partially Paid');

CREATE TABLE Sales_Order_Details (
    order_detail_id  VARCHAR(100) PRIMARY KEY,    -- Unique ID for each order detail
    sales_order_id  VARCHAR(100) NOT NULL,                       -- Foreign key to Sales table
    product_id  VARCHAR(100) NOT NULL,                           -- Foreign key to Product table
    quantity INT NOT NULL,                             -- Quantity of the product ordered
    FOREIGN KEY (sales_order_id) REFERENCES Sales(sales_order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,           -- Cascade delete on sales order deletion
    FOREIGN KEY (product_id) REFERENCES Product(product_id) 
        ON DELETE CASCADE ON UPDATE CASCADE            -- Cascade delete on product deletion
);

-- Sales_Order_Details Table
INSERT INTO Sales_Order_Details (order_detail_id, sales_order_id, product_id, quantity)
VALUES
('od1', 'sa1', 'pr23', 2),
('od2', 'sa2', 'pr8', 1),
('od3', 'sa3', 'pr35', 4),
('od4', 'sa4', 'pr42', 1),
('od5', 'sa5', 'pr17', 2),
('od6', 'sa6', 'pr29', 3),
('od7', 'sa7', 'pr50', 5),
('od8', 'sa8', 'pr4', 1),
('od9', 'sa9', 'pr14', 3),
('od10', 'sa10', 'pr38', 2),
('od11', 'sa11', 'pr10', 1),
('od12', 'sa12', 'pr27', 2),
('od13', 'sa13', 'pr5', 3),
('od14', 'sa14', 'pr46', 1),
('od15', 'sa15', 'pr32', 4),
('od16', 'sa16', 'pr21', 1),
('od17', 'sa17', 'pr13', 2),
('od18', 'sa18', 'pr40', 5),
('od19', 'sa19', 'pr2', 3),
('od20', 'sa20', 'pr18', 2),
('od21', 'sa21', 'pr44', 4),
('od22', 'sa22', 'pr12', 1),
('od23', 'sa23', 'pr6', 2),
('od24', 'sa24', 'pr34', 5),
('od25', 'sa25', 'pr31', 3),
('od26', 'sa26', 'pr9', 1),
('od27', 'sa27', 'pr24', 2),
('od28', 'sa28', 'pr20', 1),
('od29', 'sa29', 'pr15', 4),
('od30', 'sa30', 'pr48', 3),
('od31', 'sa31', 'pr7', 2),
('od32', 'sa32', 'pr36', 1),
('od33', 'sa33', 'pr3', 5),
('od34', 'sa34', 'pr45', 2),
('od35', 'sa35', 'pr28', 1),
('od36', 'sa36', 'pr11', 4),
('od37', 'sa37', 'pr49', 3),
('od38', 'sa38', 'pr30', 2),
('od39', 'sa39', 'pr19', 1),
('od40', 'sa40', 'pr22', 3),
('od41', 'sa41', 'pr16', 2),
('od42', 'sa42', 'pr41', 1),
('od43', 'sa43', 'pr26', 4),
('od44', 'sa44', 'pr39', 2),
('od45', 'sa45', 'pr25', 3),
('od46', 'sa46', 'pr1', 1),
('od47', 'sa47', 'pr33', 2),
('od48', 'sa48', 'pr43', 1),
('od49', 'sa49', 'pr37', 4),
('od50', 'sa50', 'pr47', 3);


-- receivables table ; parallel to sales
CREATE TABLE Receivables (
    receivable_id  VARCHAR(100) PRIMARY KEY ,     -- Unique ID for each receivable record
    sales_order_id  VARCHAR(100) NOT NULL,                      -- Foreign key to Sales table
    total_amount_due DECIMAL(10,2) NOT NULL,               -- TOTAL AMOUNT DUE 
    amount_received DECIMAL(10, 2) NOT NULL DEFAULT 0, -- Amount received so far, defaults to 0
    receivable_status ENUM('Pending', 'Partially Paid', 'Fully Paid') NOT NULL DEFAULT 'Pending', -- Status of the payment
    due_date DATE NOT NULL,                           -- Due date for the receivable
    last_payment_date DATE,                           -- Date of the last payment received
    user_id  VARCHAR(100),                             -- Foreign key to User table (marks who updated the receivable)
    FOREIGN KEY (sales_order_id) REFERENCES Sales(sales_order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,          -- Cascade actions for referential integrity
    FOREIGN KEY (user_id) REFERENCES User(user_id) 
        ON DELETE SET NULL ON UPDATE CASCADE          -- Reference to user, responsible for updates
);

INSERT INTO Receivables (receivable_id, sales_order_id, total_amount_due, amount_received, receivable_status, due_date, last_payment_date, user_id)
VALUES
('rec1', 'sa1', 200.00, 0.00, 'Pending', '2024-12-15', NULL, 'emp6'),
('rec2', 'sa2', 500.00, 500.00, 'Fully Paid', '2024-11-30', '2024-11-29', 'emp14'),
('rec3', 'sa3', 300.00, 250.00, 'Partially Paid', '2024-12-20', '2024-12-03', 'emp6'),
('rec4', 'sa4', 700.00, 0.00, 'Pending', '2024-12-25', NULL, 'emp6'),
('rec5', 'sa5', 1000.00, 300.00, 'Fully Paid', '2024-11-28', '2024-11-28', 'emp14'),
('rec6', 'sa6', 150.00, 50.00, 'Partially Paid', '2024-12-10', '2024-12-01', 'emp14'),
('rec7', 'sa7', 850.00, 600.00, 'Fully Paid', '2024-12-05', '2024-12-03', 'emp6'),
('rec8', 'sa8', 450.00, 450.00, 'Partially Paid', '2024-12-30', '2024-12-02', 'emp14'),
('rec9', 'sa9', 300.00, 0.00, 'Pending', '2025-01-10', NULL, 'emp14'),
('rec10', 'sa10', 2000.00, 100.00, 'Partially Paid', '2024-12-12', '2024-12-03', 'emp14'),
('rec11', 'sa11', 1200.00, 0.00, 'Pending', '2024-12-18', NULL, 'emp14'),
('rec12', 'sa12', 400.00, 400.00, 'Fully Paid', '2024-12-05', '2024-12-04', 'emp6'),
('rec13', 'sa13', 350.00, 250.00, 'Partially Paid', '2024-12-28', '2024-12-01', 'emp14'),
('rec14', 'sa14', 275.00, 0.00, 'Pending', '2024-12-22', NULL, 'emp6'),
('rec15', 'sa15', 625.00, 200.00, 'Partially Paid', '2024-12-09', '2024-12-02', 'emp14'),
('rec16', 'sa16', 1800.00, 1100.00, 'Fully Paid', '2024-11-30', '2024-11-29', 'emp6'),
('rec17', 'sa17', 230.00, 230.00, 'Partially Paid', '2024-12-15', '2024-12-05', 'emp14'),
('rec18', 'sa18', 760.00, 0.00, 'Pending', '2024-12-31', NULL, 'emp6'),
('rec19', 'sa19', 980.00, 300.00, 'Fully Paid', '2024-11-28', '2024-11-28', 'emp6'),
('rec20', 'sa20', 400.00, 400.00, 'Partially Paid', '2025-01-02', '2024-12-03', 'emp14'),
('rec21', 'sa21', 250.00, 250.00, 'Fully Paid', '2024-12-10', '2024-12-09', 'emp14'),
('rec22', 'sa22', 1700.00, 500.00, 'Partially Paid', '2024-12-21', '2024-12-05', 'emp6'),
('rec23', 'sa23', 650.00, 0.00, 'Pending', '2024-12-20', NULL, 'emp14'),
('rec24', 'sa24', 200.00, 0.00, 'Fully Paid', '2024-12-25', '2024-12-22', 'emp6'),
('rec25', 'sa25', 1400.00, 0.00, 'Pending', '2024-12-13', NULL, 'emp6'),
('rec26', 'sa26', 320.00, 300.00, 'Partially Paid', '2024-12-19', '2024-12-06', 'emp14'),
('rec27', 'sa27', 920.00, 500.00, 'Fully Paid', '2024-12-01', '2024-12-01', 'emp6'),
('rec28', 'sa28', 500.00, 0.00, 'Pending', '2024-12-24', NULL, 'emp6'),
('rec29', 'sa29', 300.00, 0.00, 'Partially Paid', '2024-12-15', '2024-12-04', 'emp14'),
('rec30', 'sa30', 800.00, 750.00, 'Fully Paid', '2024-12-11', '2024-12-10', 'emp6'),
('rec31', 'sa31', 1900.00, 0.00, 'Pending', '2025-01-08', NULL, 'emp6'),
('rec32', 'sa32', 2100.00, 50.00, 'Partially Paid', '2024-12-04', '2024-12-03', 'emp6'),
('rec33', 'sa33', 170.00, 0.00, 'Pending', '2024-12-14', NULL, 'emp14'),
('rec34', 'sa34', 760.00, 300.00, 'Partially Paid', '2024-12-18', '2024-12-05', 'emp14'),
('rec35', 'sa35', 1400.00, 450.00, 'Partially Paid', '2024-12-23', '2024-12-02', 'emp6'),
('rec36', 'sa36', 300.00, 300.00, 'Fully Paid', '2024-12-09', '2024-12-08', 'emp6'),
('rec37', 'sa37', 500.00, 0.00, 'Pending', '2024-12-26', NULL, 'emp6'),
('rec38', 'sa38', 2500.00, 1500.00, 'Partially Paid', '2024-12-30', '2024-12-10', 'emp14'),
('rec39', 'sa39', 120.00, 120.00, 'Fully Paid', '2024-12-12', '2024-12-11', 'emp14'),
('rec40', 'sa40', 2000.00, 100.00, 'Partially Paid', '2024-12-17', '2024-12-03', 'emp14'),
('rec41', 'sa41', 430.00, 0.00, 'Pending', '2025-01-09', NULL, 'emp6'),
('rec42', 'sa42', 870.00, 800.00, 'Partially Paid', '2024-12-31', '2024-12-15', 'emp6'),
('rec43', 'sa43', 160.00, 150.00, 'Fully Paid', '2024-11-30', '2024-11-30', 'emp6'),
('rec44', 'sa44', 700.00, 450.00, 'Partially Paid', '2024-12-27', '2024-12-12', 'emp14'),
('rec45', 'sa45', 1000.00, 600.00, 'Fully Paid', '2024-12-22', '2024-12-21', 'emp14'),
('rec46', 'sa46', 1100.00, 0.00, 'Pending', '2024-12-25', NULL, 'emp6'),
('rec47', 'sa47', 240.00, 0.00, 'Partially Paid', '2024-12-10', '2024-12-03', 'emp14'),
('rec48', 'sa48', 320.00, 160.00, 'Fully Paid', '2024-12-02', '2024-12-01', 'emp6'),
('rec49', 'sa49', 750.00, 300.00, 'Partially Paid', '2024-12-14', '2024-12-05', 'emp6'),
('rec50', 'sa50', 980.00, 450.00, 'Partially Paid', '2024-12-13', '2024-12-06', 'emp14');


CREATE TABLE Transporter (
    transporter_id  VARCHAR(100) PRIMARY KEY  not null,        -- Unique ID for each transporter
    transporter_name VARCHAR(255) NOT NULL,               -- Name of the transporter
    contact_info VARCHAR(255),                            -- Contact details for the transporter
    available_capacity INT NOT NULL,                      -- Available transport capacity
    transporter_type ENUM('First Mile', 'Last Mile') NOT NULL,  -- Transport type limited to 'First Mile - shipment' and 'Last Mile-delivery'
    user_id  VARCHAR(100),                                 -- Foreign key to User table (links to user managing the transporter)
    FOREIGN KEY (user_id) REFERENCES User(user_id)
        ON DELETE SET NULL ON UPDATE CASCADE              -- Reference to user responsible for transporter
);

INSERT INTO Transporter (transporter_id, transporter_name, contact_info, available_capacity, transporter_type, user_id)
VALUES
('t1', 'Speedy Logistics', '314-589-2764', 100, 'First Mile', 'tr1'),
('t2', 'Eagle Couriers', '678-430-5912', 50, 'Last Mile', 'tr2'),
('t3', 'Swift Freight', '520-973-6482', 80, 'First Mile', 'tr3'),
('t4', 'Urban Deliveries', '831-264-7190', 30, 'Last Mile', 'tr4'),
('t5', 'Rapid Transports', '405-892-6113', 120, 'First Mile', 'tr5'),
('t6', 'Next-Day Express', '512-354-8879', 40, 'Last Mile', 'tr6'),
('t7', 'Horizon Logistics', '937-641-5020', 150, 'First Mile', 'tr7'),
('t8', 'Parcel Partners', '347-948-6253', 25, 'Last Mile', 'tr8'),
('t9', 'Apex Carriers', '615-430-8251', 90, 'First Mile', 'tr9'),
('t10', 'Metro Movers', '203-574-8112', 60, 'Last Mile', 'tr10'),
('t11', 'Lightning Express', '214-925-4930', 70, 'First Mile', 'tr1'),
('t12', 'Velocity Haulers', '763-895-1274', 50, 'Last Mile', 'tr2'),
('t13', 'Skyline Couriers', '949-604-2137', 90, 'First Mile', 'tr3'),
('t14', 'Summit Deliveries', '901-560-4723', 40, 'Last Mile', 'tr4'),
('t15', 'Ironclad Movers', '707-491-6385', 110, 'First Mile', 'tr5'),
('t16', 'Turbo Logistics', '503-982-7064', 35, 'Last Mile', 'tr6'),
('t17', 'Vanguard Freight', '408-325-9804', 130, 'First Mile', 'tr7'),
('t18', 'CitySprint Express', '619-463-7215', 20, 'Last Mile', 'tr8'),
('t19', 'RoadLink Haulage', '931-670-2451', 100, 'First Mile', 'tr9'),
('t20', 'Precision Partners', '415-378-8209', 55, 'Last Mile', 'tr10'),
('t21', 'Titan Transports', '228-690-4152', 140, 'First Mile', 'tr1'),
('t22', 'PrimePath Deliveries', '805-467-3037', 45, 'Last Mile', 'tr2'),
('t23', 'Atlas Carriers', '781-542-9984', 95, 'First Mile', 'tr3'),
('t24', 'Falcon Fleet', '951-840-2631', 30, 'Last Mile', 'tr4'),
('t25', 'Pioneer Logistics', '708-416-9370', 120, 'First Mile', 'tr5'),
('t26', 'GreenLine Couriers', '317-902-5547', 25, 'Last Mile', 'tr6'),
('t27', 'Orbit Movers', '314-789-4528', 80, 'First Mile', 'tr7'),
('t28', 'Quantum Freight', '832-405-6793', 60, 'Last Mile', 'tr8'),
('t29', 'Apex Transports', '909-634-5720', 150, 'First Mile', 'tr9'),
('t30', 'EcoDeliver', '620-847-2359', 40, 'Last Mile', 'tr10'),
('t31', 'Nova Logistics', '505-749-6821', 110, 'First Mile', 'tr1'),
('t32', 'SwiftLine Couriers', '978-613-3058', 50, 'Last Mile', 'tr2'),
('t33', 'Frontier Haulage', '619-208-4573', 125, 'First Mile', 'tr3'),
('t34', 'UrbanLink Express', '408-550-6182', 20, 'Last Mile', 'tr4'),
('t35', 'Pinnacle Logistics', '479-839-2067', 70, 'First Mile', 'tr5'),
('t36', 'Trailblaze Movers', '612-732-4598', 60, 'Last Mile', 'tr6'),
('t37', 'Horizon Freight', '307-415-6703', 140, 'First Mile', 'tr7'),
('t38', 'FastTrack Deliveries', '314-519-8401', 35, 'Last Mile', 'tr8'),
('t39', 'NorthStar Haulage', '609-396-8775', 115, 'First Mile', 'tr9'),
('t40', 'MetroExpress', '210-942-1038', 50, 'Last Mile', 'tr10'),
('t41', 'CargoMasters', '847-680-2645', 105, 'First Mile', 'tr1'),
('t42', 'BlueSky Couriers', '303-915-7259', 45, 'Last Mile', 'tr2'),
('t43', 'Trailways Haulers', '251-473-6802', 90, 'First Mile', 'tr3'),
('t44', 'TerraLink Logistics', '509-742-6014', 25, 'Last Mile', 'tr4'),
('t45', 'Alpha Freight', '818-305-9847', 130, 'First Mile', 'tr5'),
('t46', 'SkyCourier Services', '951-624-3907', 30, 'Last Mile', 'tr6'),
('t47', 'ProLine Logistics', '928-370-6159', 85, 'First Mile', 'tr7'),
('t48', 'RapidLink Delivery', '623-214-7805', 50, 'Last Mile', 'tr8'),
('t49', 'IronHorse Haulers', '916-539-8612', 140, 'First Mile', 'tr9'),
('t50', 'CityCouriers', '757-680-4429', 40, 'Last Mile', 'tr10');



CREATE TABLE Shipment (
    shipment_id  VARCHAR(100) PRIMARY KEY ,           -- Unique ID for each shipment
    sales_order_id  VARCHAR(100) NOT NULL,                          -- Foreign key to Sales table
    transporter_id  VARCHAR(100),                          -- Foreign key to Transporter table
    tracking_number VARCHAR(100) NOT NULL UNIQUE,         -- Unique tracking number for the shipment
    shipment_date DATE NOT NULL,                          -- Date the shipment was sent
    shipment_cost DECIMAL (10,2),
    FOREIGN KEY (sales_order_id) REFERENCES Sales(sales_order_id)
        ON DELETE CASCADE ON UPDATE CASCADE,              -- Ensure referential integrity with Sales
    FOREIGN KEY (transporter_id) REFERENCES Transporter(transporter_id)
        ON DELETE SET NULL ON UPDATE CASCADE              -- Reference to transporter
);

INSERT INTO Shipment (shipment_id, sales_order_id, transporter_id, tracking_number, shipment_date, shipment_cost)
VALUES
('sh1', 'sa1', 't38', 'TRK1001', '2024-07-25', 150.00),
('sh2', 'sa2', 't25', 'TRK1002', '2024-07-28', 200.00),
('sh3', 'sa3', 't4', 'TRK1003', '2024-08-01', 175.00),
('sh4', 'sa4', 't32', 'TRK1004', '2024-08-03', 250.00),
('sh5', 'sa5', 't49', 'TRK1005', '2024-08-05', 300.00),
('sh6', 'sa6', 't50', 'TRK1006', '2024-08-07', 220.00),
('sh7', 'sa7', 't21', 'TRK1007', '2024-08-10', 180.00),
('sh8', 'sa8', 't28', 'TRK1008', '2024-08-12', 145.00),
('sh9', 'sa9', 't7', 'TRK1009', '2024-08-15', 190.00),
('sh10', 'sa10', 't23', 'TRK1010', '2024-08-18', 210.00),
('sh11', 'sa11', 't44', 'TRK1011', '2024-08-05', 175.00),
('sh12', 'sa12', 't35', 'TRK1012', '2024-08-09', 200.00),
('sh13', 'sa13', 't27', 'TRK1013', '2024-08-12', 150.00),
('sh14', 'sa14', 't41', 'TRK1014', '2024-08-10', 250.00),
('sh15', 'sa15', 't3', 'TRK1015', '2024-08-15', 300.00),
('sh16', 'sa16', 't26', 'TRK1016', '2024-08-20', 220.00),
('sh17', 'sa17', 't39', 'TRK1017', '2024-08-18', 180.00),
('sh18', 'sa18', 't47', 'TRK1018', '2024-08-21', 145.00),
('sh19', 'sa19', 't5', 'TRK1019', '2024-08-22', 190.00),
('sh20', 'sa20', 't40', 'TRK1020', '2024-08-25', 210.00),
('sh21', 'sa21', 't9', 'TRK1021', '2024-08-22', 170.00),
('sh22', 'sa22', 't20', 'TRK1022', '2024-08-26', 180.00),
('sh23', 'sa23', 't43', 'TRK1023', '2024-07-30', 190.00),
('sh24', 'sa24', 't42', 'TRK1024', '2024-05-28', 250.00),
('sh25', 'sa25', 't30', 'TRK1025', '2024-05-31', 300.00),
('sh26', 'sa26', 't8', 'TRK1026', '2024-05-29', 220.00),
('sh27', 'sa27', 't22', 'TRK1027', '2024-05-15', 180.00),
('sh28', 'sa28', 't1', 'TRK1028', '2024-05-20', 240.00),
('sh29', 'sa29', 't46', 'TRK1029', '2024-05-18', 220.00),
('sh30', 'sa30', 't33', 'TRK1030', '2024-05-01', 180.00),
('sh31', 'sa31', 't2', 'TRK1031', '2024-05-05', 170.00),
('sh32', 'sa32', 't45', 'TRK1032', '2024-05-12', 150.00),
('sh33', 'sa33', 't6', 'TRK1033', '2024-07-10', 250.00),
('sh34', 'sa34', 't29', 'TRK1034', '2024-07-14', 300.00),
('sh35', 'sa35', 't37', 'TRK1035', '2024-07-11', 220.00),
('sh36', 'sa36', 't48', 'TRK1036', '2024-06-23', 210.00),
('sh37', 'sa37', 't24', 'TRK1037', '2024-06-17', 180.00),
('sh38', 'sa38', 't31', 'TRK1038', '2024-06-21', 150.00),
('sh39', 'sa39', 't40', 'TRK1039', '2024-06-25', 190.00),
('sh40', 'sa40', 't9', 'TRK1040', '2024-01-02', 200.00),
('sh41', 'sa41', 't49', 'TRK1041', '2024-01-03', 175.00),
('sh42', 'sa42', 't25', 'TRK1042', '2024-01-06', 250.00),
('sh43', 'sa43', 't4', 'TRK1043', '2024-01-07', 280.00),
('sh44', 'sa44', 't32', 'TRK1044', '2024-01-08', 220.00),
('sh45', 'sa45', 't28', 'TRK1045', '2024-01-09', 210.00),
('sh46', 'sa46', 't41', 'TRK1046', '2024-01-10', 200.00),
('sh47', 'sa47', 't7', 'TRK1047', '2024-01-11', 240.00),
('sh48', 'sa48', 't50', 'TRK1048', '2024-01-12', 230.00),
('sh49', 'sa49', 't34', 'TRK1049', '2024-06-13', 250.00),
('sh50', 'sa50', 't36', 'TRK1050', '2024-06-14', 220.00);


CREATE TABLE Delivery (
    delivery_tracking_id  VARCHAR(100) PRIMARY KEY,  -- Unique ID for each delivery tracking
    shipment_id  VARCHAR(100),                             -- Foreign key to Shipment table
    delivery_status VARCHAR(100) NOT NULL,                         -- Current status of the delivery (e.g., "In Transit", "Delivered")
    status_date DATE NOT NULL,                            -- Date when the status was updated
    transporter_id  VARCHAR(100) ,                          -- Foreign key to Transporter table
    delivery_Cost DECIMAL (10,2),
    FOREIGN KEY (shipment_id) REFERENCES Shipment(shipment_id)
        ON DELETE CASCADE ON UPDATE CASCADE,              -- Ensure referential integrity with Shipment
    FOREIGN KEY (transporter_id) REFERENCES Transporter(transporter_id)
        ON DELETE SET NULL ON UPDATE CASCADE              -- Reference to transporter
);

INSERT INTO Delivery (delivery_tracking_id, shipment_id, delivery_status, status_date, transporter_id, delivery_cost)
VALUES
('del1', 'sh1', 'In Transit', '2024-10-15', 't38', 25.00),
('del2', 'sh2', 'Delivered', '2024-10-18', 't25', 30.00),
('del3', 'sh3', 'In Transit', '2024-11-02', 't4', 20.00),
('del4', 'sh4', 'Pending', '2024-11-05', 't32', 15.00),
('del5', 'sh5', 'Delivered', '2024-11-10', 't49', 35.00),
('del6', 'sh6', 'In Transit', '2024-10-20', 't50', 40.00),
('del7', 'sh7', 'Pending', '2024-10-22', 't21', 22.00),
('del8', 'sh8', 'In Transit', '2024-11-12', 't28', 18.00),
('del9', 'sh9', 'Delivered', '2024-11-15', 't7', 28.00),
('del10', 'sh10', 'In Transit', '2024-11-20', 't23', 32.00),
('del11', 'sh11', 'In Transit', '2024-10-05', 't44', 25.00),
('del12', 'sh12', 'Delivered', '2024-10-10', 't35', 30.00),
('del13', 'sh13', 'In Transit', '2024-10-12', 't27', 20.00),
('del14', 'sh14', 'Pending', '2024-10-17', 't41', 15.00),
('del15', 'sh15', 'Delivered', '2024-10-19', 't3', 35.00),
('del16', 'sh16', 'In Transit', '2024-10-22', 't26', 40.00),
('del17', 'sh17', 'Pending', '2024-10-25', 't39', 22.00),
('del18', 'sh18', 'In Transit', '2024-10-28', 't47', 18.00),
('del19', 'sh19', 'Delivered', '2024-11-01', 't5', 28.00),
('del20', 'sh20', 'In Transit', '2024-11-04', 't40', 32.00),
('del21', 'sh21', 'Delivered', '2024-11-05', 't9', 25.00),
('del22', 'sh22', 'In Transit', '2024-11-07', 't30', 30.00),
('del23', 'sh23', 'Pending', '2024-11-09', 't43', 20.00),
('del24', 'sh24', 'Delivered', '2024-11-10', 't42', 35.00),
('del25', 'sh25', 'In Transit', '2024-11-12', 't30', 40.00),
('del26', 'sh26', 'Pending', '2024-11-14', 't8', 22.00),
('del27', 'sh27', 'In Transit', '2024-11-16', 't22', 18.00),
('del28', 'sh28', 'Delivered', '2024-11-18', 't1', 28.00),
('del29', 'sh29', 'In Transit', '2024-11-20', 't46', 32.00),
('del30', 'sh30', 'Pending', '2024-11-22', 't33', 25.00),
('del31', 'sh31', 'Delivered', '2024-11-23', 't2', 30.00),
('del32', 'sh32', 'In Transit', '2024-11-25', 't45', 35.00),
('del33', 'sh33', 'Pending', '2024-11-26', 't6', 20.00),
('del34', 'sh34', 'Delivered', '2024-11-27', 't29', 40.00),
('del35', 'sh35', 'In Transit', '2024-11-29', 't37', 22.00),
('del36', 'sh36', 'Pending', '2024-10-10', 't48', 18.00),
('del37', 'sh37', 'Delivered', '2024-10-13', 't24', 28.00),
('del38', 'sh38', 'In Transit', '2024-10-15', 't31', 32.00),
('del39', 'sh39', 'Pending', '2024-10-17', 't40', 25.00),
('del40', 'sh40', 'Delivered', '2024-10-20', 't9', 30.00),
('del41', 'sh41', 'In Transit', '2024-10-22', 't49', 35.00),
('del42', 'sh42', 'Pending', '2024-10-24', 't25', 20.00),
('del43', 'sh43', 'Delivered', '2024-10-26', 't4', 40.00),
('del44', 'sh44', 'In Transit', '2024-10-28', 't32', 22.00),
('del45', 'sh45', 'Pending', '2024-11-01', 't28', 18.00),
('del46', 'sh46', 'Delivered', '2024-11-02', 't41', 28.00),
('del47', 'sh47', 'In Transit', '2024-11-03', 't7', 32.00),
('del48', 'sh48', 'Pending', '2024-11-05', 't50', 25.00),
('del49', 'sh49', 'Delivered', '2024-11-07', 't34', 30.00),
('del50', 'sh50', 'In Transit', '2024-11-09', 't36', 35.00);


CREATE TABLE Warehousing (
    warehouse_id  VARCHAR(100) PRIMARY KEY,          -- Unique ID for each warehouse
    location VARCHAR(255) NOT NULL,                  -- Name or location of the warehouse
    capacity INT NOT NULL,                                -- Maximum capacity of the warehouse
    current_stock_level INT NOT NULL,                     -- Current stock level in the warehouse
    warehouse_manager_id  VARCHAR(100),                    -- Foreign key to User table (the warehouse manager)
    FOREIGN KEY (warehouse_manager_id) REFERENCES User(user_id)
        ON DELETE SET NULL ON UPDATE CASCADE              -- Reference to user managing the warehouse
);

INSERT INTO Warehousing (warehouse_id, location, capacity, current_stock_level, warehouse_manager_id)
VALUES
('wa1', 'Dallas, TX', 5000, 3200, 'emp5'),
('wa2', 'Austin, TX', 4000, 1500, 'emp5'),
('wa3', 'Houston, TX', 6000, 4800, 'emp11'),
('wa4', 'San Antonio, TX', 3000, 2200, 'emp11'),
('wa5', 'New York, NY', 7000, 6200, 'emp11'),
('wa6', 'Los Angeles, CA', 8000, 5500, 'emp11'),
('wa7', 'Chicago, IL', 4500, 3400, 'emp11'),
('wa8', 'Miami, FL', 3500, 1800, 'emp11'),
('wa9', 'Atlanta, GA', 5500, 3000, 'emp11'),
('wa10', 'Seattle, WA', 6500, 5300, 'emp5'),
('wa11', 'Boston, MA', 6000, 4200, 'emp5'),
('wa12', 'Denver, CO', 7000, 5200, 'emp11'),
('wa13', 'Phoenix, AZ', 8000, 6200, 'emp11'),
('wa14', 'Portland, OR', 5000, 3300, 'emp5'),
('wa15', 'San Francisco, CA', 7500, 6800, 'emp5'),
('wa16', 'Detroit, MI', 4000, 2800, 'emp5'),
('wa17', 'Salt Lake City, UT', 5500, 3900, 'emp5'),
('wa18', 'Charlotte, NC', 4500, 3400, 'emp5'),
('wa19', 'Minneapolis, MN', 6500, 4500, 'emp5'),
('wa20', 'Raleigh, NC', 3000, 1600, 'emp5'),
('wa21', 'Orlando, FL', 6500, 5400, 'emp11'),
('wa22', 'Indianapolis, IN', 6000, 4600, 'emp5'),
('wa23', 'Kansas City, MO', 7000, 5800, 'emp11'),
('wa24', 'Nashville, TN', 5500, 4200, 'emp11'),
('wa25', 'New Orleans, LA', 7500, 6900, 'emp5'),
('wa26', 'Baltimore, MD', 6000, 4700, 'emp11'),
('wa27', 'Tampa, FL', 4500, 3000, 'emp5'),
('wa28', 'Cleveland, OH', 7000, 5400, 'emp11'),
('wa29', 'Pittsburgh, PA', 6000, 4600, 'emp5'),
('wa30', 'Albuquerque, NM', 8000, 6500, 'emp11'),
('wa31', 'Louisville, KY', 5500, 4200, 'emp5'),
('wa32', 'Jacksonville, FL', 4500, 3700, 'emp11'),
('wa33', 'Richmond, VA', 5000, 3300, 'emp5'),
('wa34', 'Boise, ID', 6000, 4900, 'emp11'),
('wa35', 'Cincinnati, OH', 7000, 5300, 'emp11'),
('wa36', 'Oklahoma City, OK', 7500, 6200, 'emp11'),
('wa37', 'Hartford, CT', 5500, 4500, 'emp11'),
('wa38', 'Madison, WI', 8000, 7100, 'emp5'),
('wa39', 'Columbia, SC', 6500, 5000, 'emp11'),
('wa40', 'Boise, ID', 4500, 2900, 'emp11'),
('wa41', 'Anchorage, AK', 6000, 5200, 'emp11'),
('wa42', 'Fargo, ND', 5000, 4200, 'emp5'),
('wa43', 'Grand Rapids, MI', 6500, 4600, 'emp11'),
('wa44', 'Reno, NV', 4000, 3000, 'emp11'),
('wa45', 'Scranton, PA', 7500, 6500, 'emp5'),
('wa46', 'Columbia, MO', 5500, 3800, 'emp11'),
('wa47', 'Tucson, AZ', 6000, 5100, 'emp11'),
('wa48', 'Fargo, ND', 4500, 2800, 'emp5'),
('wa49', 'Lubbock, TX', 7000, 5200, 'emp5'),
('wa50', 'Worcester, MA', 6500, 4300, 'emp11');



-- Create Returns table, referencing Sales and User ID
CREATE TABLE Returns (
    return_id  VARCHAR(100) PRIMARY KEY,        -- Unique ID for each return
    sales_order_id  VARCHAR(100) NOT NULL,                     -- Foreign key to Sales table
    user_id  VARCHAR(100),                           -- Foreign key to User table (person responsible for return)
    return_reason VARCHAR(255),                      -- Reason for the return
    return_date DATE NOT NULL,                       -- Date the return was initiated
    return_status ENUM('Pending', 'Processed', 'Rejected') NOT NULL DEFAULT 'Pending',
    FOREIGN KEY (sales_order_id) REFERENCES sales(sales_order_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,         -- Ensure referential integrity with Sales
    FOREIGN KEY (user_id) REFERENCES User(user_id)
        ON DELETE SET NULL ON UPDATE CASCADE         -- Reference to user who initiated or managed the return
);

INSERT INTO Returns (return_id, sales_order_id, user_id, return_reason, return_date, return_status)
VALUES
('ret1', 'sa1', 'cu7', 'Damaged product', '2024-10-15', 'Pending'),
('ret2', 'sa2', 'cu19', 'Wrong size', '2024-10-17', 'Processed'),
('ret3', 'sa3', 'cu4', 'Changed mind', '2024-10-18', 'Rejected'),
('ret4', 'sa4', 'cu15', 'Defective item', '2024-10-20', 'Pending'),
('ret5', 'sa5', 'cu11', 'Not needed', '2024-10-22', 'Processed'),
('ret6', 'sa6', 'cu24', 'Wrong item', '2024-10-22', 'Pending'),
('ret7', 'sa7', 'cu8', 'Item missing parts', '2024-10-23', 'Pending'),
('ret8', 'sa8', 'cu5', 'Better price found', '2024-10-25', 'Rejected'),
('ret9', 'sa9', 'cu21', 'Wrong color', '2024-10-26', 'Pending'),
('ret10', 'sa10', 'cu12', 'Better price found', '2024-10-28', 'Processed');



-- Create Inventory table, referencing Warehousing and Product
CREATE TABLE Inventory (
    inventory_id  VARCHAR(100) PRIMARY KEY,
    product_id  VARCHAR(100),
    warehouse_id  VARCHAR(100),
    sales_order_id  VARCHAR(100),
    return_id  VARCHAR(100),
    inventory_quantity INT,
        FOREIGN KEY (product_id) REFERENCES Product(product_id) ON DELETE CASCADE,
    FOREIGN KEY (sales_order_id) REFERENCES Sales(sales_order_id) ON DELETE CASCADE,
    FOREIGN KEY (return_id) REFERENCES Returns(return_id) ON DELETE CASCADE
);

 
INSERT INTO Inventory (inventory_id, product_id, warehouse_id, sales_order_id, return_id, inventory_quantity)
VALUES
('in1', 'pr33', 'wa18', 'sa7', 'ret7', 50),
('in2', 'pr8', 'wa24', 'sa2', 'ret2', 30),
('in3', 'pr10', 'wa14', 'sa2', 'ret2', 70),
('in4', 'pr12', 'wa34', 'sa4', 'ret4', 40),
('in5', 'pr36', 'wa7', 'sa10', 'ret10', 60),
('in6', 'pr29', 'wa45', 'sa6', NULL, 90),
('in7', 'pr50', 'wa1', 'sa7', NULL, 20),
('in8', 'pr4', 'wa19', 'sa8', NULL, 110),
('in9', 'pr14', 'wa23', 'sa9', NULL, 25),
('in10', 'pr25', 'wa27', 'sa6', 'ret6', 15),
('in11', 'pr45', 'wa29', 'sa1', 'ret1', 45),
('in12', 'pr27', 'wa35', 'sa12', NULL, 60),
('in13', 'pr5', 'wa32', 'sa13', NULL, 35),
('in14', 'pr46', 'wa4', 'sa14', NULL, 80),
('in15', 'pr32', 'wa7', 'sa15', NULL, 50),
('in16', 'pr21', 'wa26', 'sa16', NULL, 55),
('in17', 'pr24', 'wa23', 'sa5', 'ret5', 40),
('in18', 'pr40', 'wa40', 'sa18', NULL, 90),
('in19', 'pr2', 'wa21', 'sa19', NULL, 20),
('in20', 'pr18', 'wa21', 'sa20', NULL, 65),
('in21', 'pr44', 'wa42', 'sa21', NULL, 30),
('in22', 'pr12', 'wa21', 'sa22', NULL, 50),
('in23', 'pr28', 'wa38', 'sa8', 'ret8', 75),
('in24', 'pr34', 'wa39', 'sa24', NULL, 40),
('in25', 'pr31', 'wa18', 'sa25', NULL, 60),
('in26', 'pr9', 'wa38', 'sa26', NULL, 90),
('in27', 'pr24', 'wa20', 'sa27', NULL, 50),
('in28', 'pr20', 'wa19', 'sa28', NULL, 80),
('in29', 'pr15', 'wa11', 'sa29', NULL, 65),
('in30', 'pr5', 'wa4', 'sa3', 'ret3', 45),
('in31', 'pr7', 'wa2', 'sa31', NULL, 35),
('in32', 'pr36', 'wa2', 'sa32', NULL, 50),
('in33', 'pr3', 'wa28', 'sa33', NULL, 75),
('in34', 'pr45', 'wa30', 'sa34', NULL, 90),
('in35', 'pr28', 'wa36', 'sa35', NULL, 60),
('in36', 'pr11', 'wa21', 'sa36', NULL, 80),
('in37', 'pr49', 'wa7', 'sa37', NULL, 55),
('in38', 'pr30', 'wa44', 'sa38', NULL, 40),
('in39', 'pr19', 'wa16', 'sa39', NULL, 65),
('in40', 'pr22', 'wa07', 'sa40', NULL, 75),
('in41', 'pr16', 'wa35', 'sa41', NULL, 50),
('in42', 'pr41', 'wa17', 'sa42', NULL, 60),
('in43', 'pr26', 'wa29', 'sa43', NULL, 80),
('in44', 'pr39', 'wa7', 'sa44', NULL, 35),
('in45', 'pr25', 'wa11', 'sa45', NULL, 45),
('in46', 'pr1', 'wa37', 'sa46', NULL, 60),
('in47', 'pr9', 'wa11', 'sa9', 'ret9', 75),
('in48', 'pr43', 'wa39', 'sa48', NULL, 40),
('in49', 'pr37', 'wa14', 'sa49', NULL, 30),
('in50', 'pr47', 'wa38', 'sa50', NULL, 55);




-- Create Return_Details table, referencing Returns and Inventory
CREATE TABLE Return_Details (
    return_detail_id  VARCHAR(100) PRIMARY KEY,  -- Unique ID for each return detail
    return_id  VARCHAR(100) NOT NULL,                           -- Foreign key to Returns table
    inventory_id  VARCHAR(100) NOT NULL,                        -- Foreign key to Inventory table
    product_id  VARCHAR(100) NOT NULL,                          -- Foreign key to Product table
    return_condition VARCHAR(50) NOT NULL,            -- Condition of the product when returned
    FOREIGN KEY (return_id) REFERENCES Returns(return_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,          -- Ensure referential integrity with Returns
    FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id) 
        ON DELETE CASCADE ON UPDATE CASCADE,          -- Ensure referential integrity with Inventory
    FOREIGN KEY (product_id) REFERENCES Product(product_id)
        ON DELETE CASCADE ON UPDATE CASCADE           -- Ensure referential integrity with Product
);

INSERT INTO Return_Details (return_detail_id, return_id, inventory_id, product_id, return_condition)
VALUES
('retd1', 'ret1', 'in11', 'pr45', 'Damaged'),
('retd2', 'ret2', 'in3', 'pr10', 'Used'),
('retd3', 'ret3', 'in30', 'pr5', 'Unopened'),
('retd4', 'ret4', 'in4', 'pr12', 'Defective'),
('retd5', 'ret5', 'in17', 'pr24', 'New'),
('retd6', 'ret6', 'in10', 'pr25', 'Slightly Damaged'),
('retd7', 'ret7', 'in1', 'pr33', 'New'),
('retd8', 'ret8', 'in23', 'pr28', 'Used'),
('retd9', 'ret9', 'in47', 'pr9', 'Unopened'),
('retd10', 'ret10', 'in5', 'pr36', 'Damaged');


-- Create Payment_Methods table, needed for Payments
CREATE TABLE Payment_Methods (
    payment_method_id  VARCHAR(100) PRIMARY KEY ,    -- Unique ID for each payment method
    method_type ENUM('Credit Card', 'Debit Card', 'Cash', 'Bank Transfer', 'PayPal', 
                     'Apple Pay', 'Google Pay') NOT NULL
);

INSERT INTO Payment_Methods (payment_method_id, method_type)
VALUES
('pam1', 'Credit Card'),
('pam2', 'Debit Card'),
('pam3', 'Cash'),
('pam4', 'Bank Transfer'),
('pam5', 'PayPal'),
('pam6', 'Apple Pay'),
('pam7', 'Google Pay');


-- Create Purchases table, referencing 
CREATE TABLE Purchases (
    purchase_order_id  VARCHAR(100) PRIMARY KEY,
    supplier_id  VARCHAR(100),
    total_amount DECIMAL(10,2),
    purchase_date DATE,
    state_tax DECIMAL(10, 2) DEFAULT 0 NOT NULL, -- State tax amount (defaults to 0)
    local_tax DECIMAL(10, 2) DEFAULT 0 NOT NULL -- Local tax amount (defaults to 0)
);

INSERT INTO Purchases (purchase_order_id, supplier_id, total_amount, purchase_date, state_tax, local_tax)
VALUES
('pu1', 'su1', 1500.5, '2024-02-10', 135.05, 75.03),
('pu2', 'su3', 2300, '2024-03-10', 207, 115),
('pu3', 'su4', 500.75, '2024-03-10', 45.07, 25.04),
('pu4', 'su6', 980.2, '2024-04-10', 88.22, 49.01),
('pu5', 'su2', 1200, '2024-06-10', 108, 60),
('pu6', 'su9', 750.45, '2024-06-10', 67.54, 37.52),
('pu7', 'su10', 2000, '2024-06-10', 180, 100),
('pu8', 'su7', 1450.3, '2024-07-10', 130.53, 72.52),
('pu9', 'su5', 2100.99, '2024-09-10', 189.09, 105.05),
('pu10', 'su6', 3200.1, '2024-09-10', 288.01, 160),
('pu11', 'su10', 2100.75, '2024-09-10', 189.07, 105.04),
('pu12', 'su1', 5000.2, '2024-11-10', 450.02, 250.01),
('pu13', 'su2', 980.5, '2024-12-10', 88.25, 49.03),
('pu14', 'su5', 1250.99, '2024-10-13', 112.59, 62.55),
('pu15', 'su9', 1800.3, '2024-10-15', 162.03, 90.02),
('pu16', 'su3', 750.6, '2024-10-17', 67.55, 37.53),
('pu17', 'su7', 1200.75, '2024-10-17', 108.07, 60.04),
('pu18', 'su4', 2050.6, '2024-10-17', 184.55, 102.53),
('pu19', 'su6', 1100, '2024-10-17', 99, 55),
('pu20', 'su1', 2700, '2024-10-18', 243, 135),
('pu21', 'su10', 980.3, '2024-10-18', 88.23, 49.02),
('pu22', 'su2', 3200.45, '2024-10-20', 288.04, 160.02),
('pu23', 'su7', 5400.1, '2024-10-20', 486.01, 270.01),
('pu24', 'su5', 680.75, '2024-10-23', 61.27, 34.04),
('pu25', 'su9', 2200.2, '2024-10-25', 198.02, 110.01),
('pu26', 'su3', 1900.3, '2024-10-30', 171.03, 95.02),
('pu27', 'su4', 3600.99, '2024-11-01', 324.09, 180.05),
('pu28', 'su10', 2500.5, '2024-11-02', 225.05, 125.03),
('pu29', 'su1', 1400, '2024-11-05', 126, 70),
('pu30', 'su2', 1600.75, '2024-11-05', 144.07, 80.04),
('pu31', 'su6', 450.75, '2024-11-05', 40.57, 22.54),
('pu32', 'su7', 800, '2024-11-05', 72, 40),
('pu33', 'su8', 2200.99, '2024-11-07', 198.09, 110.05),
('pu34', 'su9', 1300.5, '2024-11-10', 117.05, 65.02),
('pu35', 'su4', 1500.75, '2024-11-10', 135.07, 75.04),
('pu36', 'su5', 950.2, '2024-11-10', 85.52, 47.51),
('pu37', 'su10', 1250.99, '2024-11-12', 112.59, 62.55),
('pu38', 'su1', 1100, '2024-11-15', 99, 55),
('pu39', 'su2', 3300.75, '2024-11-15', 297.07, 165.04),
('pu40', 'su6', 4500, '2024-11-18', 405, 225),
('pu41', 'su7', 2200.99, '2024-11-20', 198.09, 110.05),
('pu42', 'su9', 1800.3, '2024-11-20', 162.03, 90.02),
('pu43', 'su3', 2900.75, '2024-11-20', 261.07, 145.04),
('pu44', 'su5', 3500.6, '2024-11-23', 315.05, 175.03),
('pu45', 'su8', 4000.5, '2024-11-23', 360.05, 200.03),
('pu46', 'su4', 5000.75, '2024-11-23', 450.07, 250.04),
('pu47', 'su1', 6000.3, '2024-11-25', 540.03, 300.02),
('pu48', 'su6', 7000.6, '2024-11-28', 630.05, 350.03),
('pu49', 'su2', 5500.2, '2024-12-01', 495.02, 275.01),
('pu50', 'su10', 1500.75, '2024-12-02', 135.07, 75.04);


-- Create Purchase_Order_Details table, referencing Purchases and Inventory
CREATE TABLE Purchase_Order_Details (
    purchase_detail_id  VARCHAR(100) PRIMARY KEY,
    purchase_order_id  VARCHAR(100),
    product_id  VARCHAR(100),
    inventory_id  VARCHAR(100),
	Purchase_quantity INT,
    Purchase_Price DECIMAL(10,2),
    margin DECIMAL(5,2),
    tax DECIMAL(5,2),
    FOREIGN KEY (purchase_order_id) REFERENCES Purchases(purchase_order_id) ON DELETE CASCADE,
    FOREIGN KEY (inventory_id) REFERENCES Inventory(inventory_id) ON DELETE CASCADE,
    FOREIGN KEY (product_id) REFERENCES Product(product_Id)
);

INSERT INTO Purchase_Order_Details (purchase_detail_id, purchase_order_id, product_id, inventory_id, purchase_quantity, purchase_price, margin, tax)
VALUES
('pud1', 'pu1', 'pr12', 'in1', 10, 150.5, 15, 13.55),
('pud2', 'pu2', 'pr28', 'in23', 20, 115, 10, 10.35),
('pud3', 'pu3', 'pr47', 'in11', 5, 100.2, 9, 9.02),
('pud4', 'pu4', 'pr33', 'in49', 15, 75.3, 8.5, 7.53),
('pud5', 'pu5', 'pr5', 'in4', 12, 200.5, 20, 18.05),
('pud6', 'pu6', 'pr41', 'in16', 8, 95.2, 9.5, 8.54),
('pud7', 'pu7', 'pr24', 'in43', 30, 85, 5, 7.65),
('pud8', 'pu8', 'pr8', 'in29', 10, 210, 18, 18.9),
('pud9', 'pu9', 'pr16', 'in5', 25, 160.3, 16, 14.43),
('pud10', 'pu10', 'pr36', 'in36', 18, 130, 12.5, 11.7),
('pud11', 'pu11', 'pr50', 'in10', 20, 95.5, 10, 8.6),
('pud12', 'pu12', 'pr3', 'in50', 10, 125.3, 12.5, 11.28),
('pud13', 'pu13', 'pr20', 'in21', 15, 105, 11, 9.45),
('pud14', 'pu14', 'pr11', 'in29', 8, 140.2, 13, 12.62),
('pud15', 'pu15', 'pr32', 'in38', 25, 70, 6, 6.3),
('pud16', 'pu16', 'pr45', 'in13', 30, 80, 7.5, 7.2),
('pud17', 'pu17', 'pr17', 'in2', 40, 90.1, 8, 8.11),
('pud18', 'pu18', 'pr30', 'in47', 18, 110, 10.5, 9.9),
('pud19', 'pu19', 'pr6', 'in46', 10, 130, 12, 11.7),
('pud20', 'pu20', 'pr42', 'in20', 22, 180, 15, 16.2),
('pud21', 'pu21', 'pr1', 'in50', 10, 120.3, 11.5, 10.83),
('pud22', 'pu22', 'pr27', 'in33', 15, 125, 12, 11.25),
('pud23', 'pu23', 'pr19', 'in4', 5, 100, 9, 9),
('pud24', 'pu24', 'pr9', 'in17', 18, 110.5, 10, 9.95),
('pud25', 'pu25', 'pr40', 'in31', 12, 170, 14, 15.3),
('pud26', 'pu26', 'pr25', 'in46', 25, 95.5, 8.5, 8.6),
('pud27', 'pu27', 'pr38', 'in35', 15, 115, 10, 10.35),
('pud28', 'pu28', 'pr4', 'in7', 10, 125.3, 11.5, 11.28),
('pud29', 'pu29', 'pr14', 'in28', 20, 150, 13.5, 13.5),
('pud30', 'pu30', 'pr31', 'in48', 8, 80, 7, 7.2),
('pud31', 'pu31', 'pr21', 'in11', 12, 130, 12, 11.7),
('pud32', 'pu32', 'pr46', 'in30', 15, 95, 8.5, 8.55),
('pud33', 'pu33', 'pr18', 'in32', 30, 180, 16, 16.2),
('pud34', 'pu34', 'pr13', 'in22', 18, 110.2, 10.5, 9.92),
('pud35', 'pu35', 'pr7', 'in3', 5, 135, 12.5, 12.15),
('pud36', 'pu36', 'pr29', 'in15', 25, 75.5, 6.5, 6.8),
('pud37', 'pu37', 'pr43', 'in5', 10, 145, 13, 13.05),
('pud38', 'pu38', 'pr39', 'in49', 8, 95, 9, 8.55),
('pud39', 'pu39', 'pr26', 'in11', 15, 105.5, 10.5, 9.5),
('pud40', 'pu40', 'pr22', 'in43', 18, 120, 11, 10.8),
('pud41', 'pu41', 'pr34', 'in16', 20, 160, 14.5, 14.4),
('pud42', 'pu42', 'pr48', 'in49', 12, 135.3, 12, 12.18),
('pud43', 'pu43', 'pr10', 'in27', 30, 150, 14.5, 13.5),
('pud44', 'pu44', 'pr2', 'in36', 8, 200, 18, 18),
('pud45', 'pu45', 'pr15', 'in22', 18, 120, 11, 10.8),
('pud46', 'pu46', 'pr35', 'in39', 12, 130.5, 11.5, 11.75),
('pud47', 'pu47', 'pr37', 'in41', 25, 110, 10, 9.9),
('pud48', 'pu48', 'pr49', 'in27', 10, 150, 13, 13.5),
('pud49', 'pu49', 'pr44', 'in49', 15, 95.5, 8.5, 8.6),
('pud50', 'pu50', 'pr23', 'in50', 20, 180, 16, 16.2);


-- Create Payments table, referencing Purchases, Payment_Methods, and User
CREATE TABLE Payments (
    payment_id  VARCHAR(100) PRIMARY KEY,
    purchase_order_id  VARCHAR(100),
    payment_method_id  VARCHAR(100),
    amount DECIMAL(10,2),
    payment_date DATE,
    user_id  VARCHAR(100),
    FOREIGN KEY (purchase_order_id) REFERENCES Purchases(purchase_order_id) ON DELETE CASCADE,
    FOREIGN KEY (payment_method_id) REFERENCES Payment_Methods(payment_method_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES User(user_id) ON DELETE SET NULL
);


INSERT INTO Payments (payment_id, purchase_order_id, payment_method_id, amount, payment_date, user_id)
VALUES
('pa1', 'pu1', 'pam1', 155.5, '2024-10-15', 'emp6'),
('pa2', 'pu2', 'pam5', 130.0, '2024-11-05', 'emp6'),
('pa3', 'pu3', 'pam7', 120.0, '2024-11-20', 'emp6'),
('pa4', 'pu4', 'pam5', 80.0, '2024-10-25', 'emp6'),
('pa5', 'pu5', 'pam5', 200.5, '2024-12-02', 'emp6'),
('pa6', 'pu6', 'pam6', 95.0, '2024-10-18', 'emp6'),
('pa7', 'pu7', 'pam4', 160.0, '2024-11-11', 'emp6'),
('pa8', 'pu8', 'pam1', 175.3, '2024-12-01', 'emp6'),
('pa9', 'pu9', 'pam7', 135.0, '2024-11-15', 'emp6'),
('pa10', 'pu10', 'pam2', 190.0, '2024-12-10', 'emp6'),
('pa11', 'pu11', 'pam7', 145.0, '2024-10-12', 'emp6'),
('pa12', 'pu12', 'pam6', 200.0, '2024-11-03', 'emp6'),
('pa13', 'pu13', 'pam2', 130.5, '2024-11-08', 'emp6'),
('pa14', 'pu14', 'pam5', 90.0, '2024-10-22', 'emp6'),
('pa15', 'pu15', 'pam7', 180.0, '2024-12-05', 'emp6'),
('pa16', 'pu16', 'pam5', 220.0, '2024-11-16', 'emp6'),
('pa17', 'pu17', 'pam2', 155.0, '2024-12-01', 'emp6'),
('pa18', 'pu18', 'pam1', 140.0, '2024-11-25', 'emp6'),
('pa19', 'pu19', 'pam6', 165.0, '2024-10-30', 'emp6'),
('pa20', 'pu20', 'pam3', 180.5, '2024-11-12', 'emp6'),
('pa21', 'pu21', 'pam4', 150.0, '2024-10-28', 'emp6'),
('pa22', 'pu22', 'pam6', 200.5, '2024-11-13', 'emp6'),
('pa23', 'pu23', 'pam5', 110.0, '2024-12-04', 'emp6'),
('pa24', 'pu24', 'pam4', 120.0, '2024-10-26', 'emp6'),
('pa25', 'pu25', 'pam1', 135.5, '2024-12-06', 'emp6'),
('pa26', 'pu26', 'pam6', 150.0, '2024-11-20', 'emp6'),
('pa27', 'pu27', 'pam1', 190.0, '2024-12-15', 'emp6'),
('pa28', 'pu28', 'pam5', 210.0, '2024-11-02', 'emp6'),
('pa29', 'pu29', 'pam7', 160.5, '2024-10-19', 'emp6'),
('pa30', 'pu30', 'pam3', 140.5, '2024-10-16', 'emp6'),
('pa31', 'pu31', 'pam7', 95.0, '2024-12-03', 'emp6'),
('pa32', 'pu32', 'pam1', 135.0, '2024-11-30', 'emp6'),
('pa33', 'pu33', 'pam3', 145.0, '2024-12-07', 'emp6'),
('pa34', 'pu34', 'pam1', 125.0, '2024-11-18', 'emp6'),
('pa35', 'pu35', 'pam2', 150.0, '2024-10-29', 'emp6'),
('pa36', 'pu36', 'pam6', 210.0, '2024-11-05', 'emp6'),
('pa37', 'pu37', 'pam7', 175.5, '2024-12-10', 'emp6'),
('pa38', 'pu38', 'pam3', 160.5, '2024-10-24', 'emp6'),
('pa39', 'pu39', 'pam2', 185.0, '2024-11-22', 'emp6'),
('pa40', 'pu40', 'pam6', 145.0, '2024-12-09', 'emp6'),
('pa41', 'pu41', 'pam5', 155.5, '2024-10-31', 'emp6'),
('pa42', 'pu42', 'pam7', 135.0, '2024-11-09', 'emp6'),
('pa43', 'pu43', 'pam5', 190.5, '2024-12-08', 'emp6'),
('pa44', 'pu44', 'pam3', 125.5, '2024-11-21', 'emp6'),
('pa45', 'pu45', 'pam4', 215.0, '2024-10-23', 'emp6'),
('pa46', 'pu46', 'pam5', 130.0, '2024-11-06', 'emp6'),
('pa47', 'pu47', 'pam7', 120.0, '2024-10-27', 'emp6'),
('pa48', 'pu48', 'pam5', 140.0, '2024-12-02', 'emp6'),
('pa49', 'pu49', 'pam1', 160.0, '2024-11-14', 'emp6'),
('pa50', 'pu50', 'pam5', 170.0, '2024-12-12', 'emp6');

#######################################

##TRIGGERS AND OTHER OPERATORS

#Trigger to automatically calculcate the total sales amount
DELIMITER //

CREATE TRIGGER CalculateTotalAmount
AFTER INSERT ON Sales_Order_Details
FOR EACH ROW
BEGIN
    -- Declare the total variable within the trigger
    DECLARE total DECIMAL(10, 2) DEFAULT 0;

    -- Calculate the total amount for the sales order
    SELECT COALESCE(SUM((p.product_price + (p.product_price * p.product_margin / 100)) * sod.quantity), 0)
    INTO total
    FROM Sales_Order_Details sod
    JOIN Product p ON sod.product_id = p.product_ID
    WHERE sod.sales_order_id = NEW.sales_order_id;

    -- Update the total_amount in the Sales table
    UPDATE Sales
    SET total_amount = total
    WHERE sales_order_id = NEW.sales_order_id;
END //

DELIMITER ;


## to automatically apply discount rate
DELIMITER //

CREATE TRIGGER ApplyDiscountRate
AFTER INSERT ON Sales
FOR EACH ROW
BEGIN
    DECLARE discount DECIMAL(5, 2) DEFAULT 0;

    -- Find the discount rate based on the total amount
    SELECT COALESCE(discount_rate, 0)
    INTO discount
    FROM Discount_Slabs
    WHERE NEW.total_amount >= min_total_amount
      AND (NEW.total_amount <= max_total_amount OR max_total_amount IS NULL)
    ORDER BY min_total_amount DESC
    LIMIT 1;

    -- Update the Sales table with the applicable discount
    UPDATE Sales
    SET discount_applied = discount
    WHERE sales_order_id = NEW.sales_order_id;
END //

DELIMITER ;



## For auto update of the receivable status for insertion
DELIMITER //
CREATE TRIGGER UpdateReceivableStatusInsert
BEFORE INSERT ON Receivables
FOR EACH ROW
BEGIN
    IF NEW.amount_received = 0 THEN
        SET NEW.receivable_status = 'Pending';
    ELSEIF NEW.amount_received > 0 AND NEW.amount_received < NEW.total_amount_due THEN
        SET NEW.receivable_status = 'Partially Paid';
    ELSEIF NEW.amount_received >= NEW.total_amount_due THEN
        SET NEW.receivable_status = 'Fully Paid';
    END IF;
END //

DELIMITER ;

## For auto update of the receivable status for update
DELIMITER //
CREATE TRIGGER UpdateReceivableStatusUpdate
BEFORE UPDATE ON Receivables
FOR EACH ROW
BEGIN
    IF NEW.amount_received = 0 THEN
        SET NEW.receivable_status = 'Pending';
    ELSEIF NEW.amount_received > 0 AND NEW.amount_received < NEW.total_amount_due THEN
        SET NEW.receivable_status = 'Partially Paid';
    ELSEIF NEW.amount_received >= NEW.total_amount_due THEN
        SET NEW.receivable_status = 'Fully Paid';
    END IF;
END //

DELIMITER ;

DELIMITER //

#For updating current stock level upon insertion
DELIMITER //

CREATE TRIGGER UpdateStockLevelInsert
AFTER INSERT ON Inventory
FOR EACH ROW
BEGIN
    DECLARE total_stock INT;

    -- Calculate the total stock for the warehouse
    SELECT SUM(Inventory_Quantity)
    INTO total_stock
    FROM Inventory
    WHERE Warehouse_ID = NEW.Warehouse_ID;

    -- Update the Warehousing table
    UPDATE Warehousing
    SET current_stock_level = total_stock
    WHERE warehouse_id = NEW.Warehouse_ID;
END //

DELIMITER ;

#For updating current stock level upon update
DELIMITER //

CREATE TRIGGER UpdateStockLevelUpdate
AFTER UPDATE ON Inventory
FOR EACH ROW
BEGIN
    DECLARE total_stock INT;

    -- Calculate the total stock for the warehouse
    SELECT SUM(Inventory_Quantity)
    INTO total_stock
    FROM Inventory
    WHERE Warehouse_ID = NEW.Warehouse_ID;

    -- Update the Warehousing table
    UPDATE Warehousing
    SET current_stock_level = total_stock
    WHERE warehouse_id = NEW.Warehouse_ID;
END //

DELIMITER ;

## Salwa Queries
SELECT p.product_name, 
       ROUND(SUM(sod.quantity * (p.product_price * (1 + p.product_margin / 100))), 2) AS total_revenue,
       ROUND(SUM(sod.quantity * p.product_price), 2) AS total_cost,
       ROUND(SUM(sod.quantity * (p.product_price * (1 + p.product_margin / 100)) - sod.quantity * p.product_price), 2) 
       AS total_profit
FROM Product p
JOIN Sales_Order_Details sod ON p.product_id = sod.product_id
JOIN Sales s ON sod.sales_order_id = s.sales_order_id
GROUP BY p.product_name
ORDER BY total_profit DESC;

##2

SELECT u.user_id, 
	   u.user_name,
       SUM(s.total_amount) AS total_spent
FROM User u
JOIN Sales s ON u.user_id = s.customer_id
WHERE u.user_type = 'customer'
GROUP BY u.user_id, u.user_name
HAVING SUM(s.total_amount) > (
    SELECT 2 * AVG(total_spent) 
    FROM (SELECT SUM(s.total_amount) AS total_spent
          FROM Sales s
          GROUP BY s.customer_id) AS AvgSpending
);

##3
SELECT 
    p.product_name, 
    r.return_reason, 
    COUNT(rd.return_id) AS total_returns
FROM 
    Product p
JOIN 
    Return_Details rd ON p.product_ID = rd.product_id
JOIN 
    Returns r ON rd.return_id = r.return_id
WHERE 
    (r.return_reason LIKE '%defective%' OR r.return_reason LIKE '%damaged%')
GROUP BY 
    p.product_name, r.return_reason;

##4
SELECT 
    r.receivable_id, r.sales_order_id, r.total_amount_due, r.amount_received,
    r.due_date, r.receivable_status,
    DATEDIFF(CURDATE(), r.due_date) AS overdue_days,
    s.customer_id, 
    u.user_name 
FROM Receivables r
JOIN 
    Sales s ON r.sales_order_id = s.sales_order_id  
JOIN 
    User u ON s.customer_id = u.user_id  
WHERE 
    r.receivable_status IN ('pending', 'partially paid')  
    AND r.total_amount_due > 0 
    AND (r.due_date < CURDATE() OR DATEDIFF(r.due_date, CURDATE()) <= 5) 
    AND u.user_type = 'customer';  








