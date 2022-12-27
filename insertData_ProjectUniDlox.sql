--Project UniDlox Clothing Store

--SEEDING DATABASE
USE UniDlox

INSERT INTO Staffs (id, [name], phone_number, [address], age, gender, salary)
VALUES
	('SF001', 'Chiara Winter', '+6281645269035', 'Jl Kiaracondong', '19', 'Female', '2400000'),
	('SF002', 'Jonah House', '+6212321567864', 'Jl Bidara Raya', '23', 'Male', '1400000'),
	('SF003', 'Bailey Mccullough', '+6281569835718', 'Jl Letjen South Parman', '21', 'Male', '1940000'),
	('SF004', 'Halima Summers', '+6219048262017', 'Jl Malaka Country Pd Kopi', '19', 'Female', '2100000'),
	('SF005', 'Fynn Fields', '+6258802622633', ' Jl PTB Duren Sawit', '26', 'Male', '2400000'),
	('SF006', 'Everly Saunders', '+6269197871352', 'Jl Jagir Wonokromo Wetan', '22', 'Male', '9900000'),
	('SF007', 'Antony Cortez', '+6241293824495', 'Jl Ir H Juanda', '29', 'Male', '1200000'),
	('SF008', 'Deanna Shields', '+6254317233072', 'Jl Karet Pedurenan Gg Sidik', '31', 'Female', '2500000'),
	('SF009', 'Anthony Kirby', '+6291782497764', 'Jl Gn Sahari Raya', '39', 'Male', '3100000'),
	('SF010', 'Darragh Barry', '+6264825024160', 'Jl Tebet Timur Dlm', '19', 'Female', '16900000')


INSERT INTO Payments (id, payment_type)
VALUES
	('PA001','Cash'),
	('PA002','Virtual Account'),
	('PA003','DANA'),
	('PA004','OVO'),
	('PA005','Go-Pay'),
	('PA006','Shopee-Pay'),
	('PA007','Debit Card'),
	('PA008','Credit Card'),
	('PA009','Cryptocurrency'),
	('PA010','Flazz')

INSERT INTO Materials (id, [name], price)
VALUES
	('MA001', 'Katun', '850000'),
	('MA002', 'Kulit', '1250000'),
	('MA003', 'Kain', '250000'),
	('MA004', 'Nilon', '570000'),
	('MA005', 'Linen', '750000'),
	('MA006', 'Denim', '210000'),
	('MA007', 'Canvas', '1200000'),
	('MA008', 'Poliester', '130000'),
	('MA009', 'Rajut', '280000'),
	('MA010', 'Sutra', '440000')

INSERT INTO Suppliers (id, [name], phone_number, [address])
VALUES
	('SU001', 'Keisha Vega', '+6281645234505', ' Jl Panglima Polim V'),
	('SU002', 'Faris Tate', '+6243222966330', 'Jl Halimun'),
	('SU003', 'Elsa Davidson', '+6259462381696', 'Jl Onta'),
	('SU004', 'Albert Guzman', '+6217505562272', 'Jl Supomo'),
	('SU005', 'Edie Cervantes', '+6218635046915', 'Jl Raya Perancis'),
	('SU006', 'Joan Shields', '+6286177025808', 'Jl Swadaya '),
	('SU007', 'Ayrton Blair', '+6286177025808', 'JL Tegal Parang Selatan'),
	('SU008', 'Osian Dickerson', '+6278933979581', 'Jl RS Fatmawati'),
	('SU009', 'Jeffrey Campos', '+6246184728092', 'Jl Sidodadi'),
	('SU010', 'Elspeth Ayala', '+6282306892352', 'Jl Arteri Pd Indah')

INSERT INTO Clothes (id, [name], stock, price)
VALUES
	('CL001', 'Shoez', '30', '2000000'),
	('CL002', 'MooClothes', '55', '900000'),
	('CL003', 'Echelon', '100', '12000000'),
	('CL004', 'Tugalent', '55', '1000000'),
	('CL005', 'Tisar', '50', '900000'),
	('CL006', 'Dessie', '80', '3000000'),
	('CL007', 'Zee', '48', '1250000'),
	('CL008', 'Zazzle', '30', '970000'),
	('CL009', 'Tiszka', '120', '9000000'),
	('CL010', 'Luxe', '84', '600000')

INSERT INTO Customers (id, [name], phone_number, [address], gender, email, dob)
VALUES
	('CU001', 'Bryant', '+6283410103456', 'Jl Sei Merah', 'Male', 'bryant.thea@gmail.com','2002-04-11'),
	('CU002', 'Ferdy', '+6282146549088', 'Jl Pasar Baru', 'Male', 'ferdy.abdi@gmail.com','1999-06-26'),
	('CU003', 'Clark', '+6282150512345', 'Jalan Jeruk', 'Female', 'clark.andrina@yahoo.com','2001-01-05'),
	('CU004', 'Ramirez', '+6282142709385', 'Jl Karang Empat Besar', 'Male', 'ramirez.nikol@yahoo.com','1980-12-28'),
	('CU005', 'Sanchez', '+6282194314200', 'Jl Bacang', 'Female', 'sanchez.claude@yahoo.com','2002-02-07'),
	('CU006', 'Hudson', '+6282144455555', 'Jl MUNDARI', 'Male', 'hudson.norman@gmail.com','2002-08-17'),
	('CU007', 'Tucker', '+6282175891209', 'Jl Melawai XII', 'Male', 'tucker.nicolas@gmail.com','1995-03-03'),
	('CU008', 'Emilia', '+6282119022876', 'Jl Langko', 'Female', 'emilia.rivera@yahoo.com','2000-02-10'),
	('CU009', 'Alessa', '+6282102912533', 'Jl Ampera Raya', 'Female', 'alessa.ross@gmail.com','2002-05-13'),
	('CU010', 'Watson', '+6282153380085', 'Jl Sultan Agung', 'Female', 'watson.rihanna@yahoo.com','2001-12-27')

INSERT INTO Material_Transactions (id, staff_id, payment_id, material_id, supplier_id, qty, transaction_date)
VALUES
	('PU001', 'SF001', 'PA004', 'MA002', 'SU001', '4', '2021-01-09'),
	('PU002', 'SF001', 'PA001', 'MA006', 'SU006', '3', '2021-01-14'),
	('PU003', 'SF003', 'PA008', 'MA003', 'SU003', '14', '2021-01-29'),
	('PU004', 'SF009', 'PA005', 'MA002', 'SU001', '5', '2021-02-19'),
	('PU005', 'SF007', 'PA003', 'MA008', 'SU009', '14', '2021-02-22'),
	('PU006', 'SF004', 'PA002', 'MA010', 'SU010', '2', '2021-11-01'),
	('PU007', 'SF002', 'PA006', 'MA007', 'SU008', '3', '2021-03-13'),
	('PU008', 'SF007', 'PA003', 'MA007', 'SU008', '5', '2021-02-22'),
	('PU009', 'SF010', 'PA010', 'MA010', 'SU010', '10', '2020-02-20'),
	('PU010', 'SF006', 'PA007', 'MA004', 'SU002', '30', '2021-04-15'),
	('PU011', 'SF005', 'PA009', 'MA001', 'SU004', '9', '2019-12-11'),
	('PU012', 'SF009', 'PA010', 'MA003', 'SU009', '4', '2021-05-28'),
	('PU013', 'SF004', 'PA001', 'MA002', 'SU006', '7', '2018-11-08'),
	('PU014', 'SF010', 'PA009', 'MA006', 'SU007', '19', '2021-06-10'),
	('PU015', 'SF008', 'PA008', 'MA009', 'SU005', '2', '2021-12-12')

INSERT INTO Transaction_Details (id, material_transaction_id, cloth_id, customer_id, qty, payment_id) 
VALUES
	('SA001', 'PU001', 'CL002', 'CU004', '3', 'PA001'),
	('SA002', 'PU001', 'CL001', 'CU004', '2', 'PA002'),
	('SA003', 'PU002', 'CL004', 'CU001', '10', 'PA003'),
	('SA004', 'PU003', 'CL003', 'CU002', '7', 'PA004'),
	('SA005', 'PU007', 'CL004', 'CU008', '5', 'PA005'),
	('SA006', 'PU008', 'CL003', 'CU003', '6', 'PA006'),
	('SA007', 'PU009', 'CL005', 'CU010', '2', 'PA007'),
	('SA008', 'PU010', 'CL007', 'CU001', '1', 'PA008'),
	('SA009', 'PU011', 'CL006', 'CU002', '9', 'PA009'),
	('SA010', 'PU012', 'CL009', 'CU004', '15', 'PA010'),
	('SA011', 'PU013', 'CL008', 'CU005', '14', 'PA003'),
	('SA012', 'PU014', 'CL003', 'CU007', '3', 'PA004'),
	('SA013', 'PU015', 'CL001', 'CU004', '8', 'PA001'),
	('SA014', 'PU001', 'CL004', 'CU003', '5', 'PA006'),
	('SA015', 'PU004', 'CL002', 'CU002', '11', 'PA007'),
	('SA016', 'PU002', 'CL010', 'CU001', '25', 'PA005'),
	('SA017', 'PU011', 'CL005', 'CU008', '8', 'PA002'),
	('SA018', 'PU003', 'CL006', 'CU004', '9', 'PA003'),
	('SA019', 'PU007', 'CL003', 'CU010', '25', 'PA009'),
	('SA020', 'PU013', 'CL009', 'CU006', '11', 'PA008'),
	('SA021', 'PU008', 'CL008', 'CU002', '16', 'PA002'),
	('SA022', 'PU014', 'CL005', 'CU008', '4', 'PA001'),
	('SA023', 'PU011', 'CL006', 'CU004', '5', 'PA003'),
	('SA024', 'PU012', 'CL007', 'CU005', '6', 'PA004'),
	('SA025', 'PU015', 'CL001', 'CU003', '8', 'PA005')