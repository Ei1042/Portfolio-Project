# Creating database
CREATE DATABASE healthcare;

USE healthcare;

# Creating tables
CREATE TABLE patients_info (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_name VARCHAR(50),
    age INT,
    gender CHAR(7),
    blood_type CHAR(5),
    medical_condition VARCHAR(50),
    insurance_provider VARCHAR(50),
    bills INT
);

CREATE TABLE hospitals_info
(
hospital_id INT PRIMARY KEY AUTO_INCREMENT,
hospital_name VARCHAR(50),
room_no INT,
doctor_name VARCHAR(50)
);

CREATE TABLE patients_status (
    patient_id INT,
    hospital_id INT,
    admission_date DATE,
    discharge_date DATE,
    test_result VARCHAR(50),
    medication VARCHAR(50),
    admission_type VARCHAR(50),
    FOREIGN KEY (patient_id)
        REFERENCES patients_info (patient_id)
        ON DELETE CASCADE,
    FOREIGN KEY (hospital_id)
        REFERENCES hospitals_info (hospital_id)
        ON DELETE CASCADE
);

# Inserting data into tables
INSERT INTO patients_info (patient_name, age, gender, blood_type, medical_condition, insurance_provider, bills)
VALUES 
('Bobby Jackson', 30, 'Male', 'B-', 'Cancer', 'Blue Cross', 18856.2813059781),
('Leslie Terry', 62, 'Male', 'A+', 'Obesity', 'Medicare', 33643.3272865778),
('Danny Smith', 76, 'Female', 'A-', 'Obesity', 'Aetna', 27955.0960788424),
('Andrew Watts', 28, 'Female', 'O+','Cancer', 'Aetna', 14238.3178139376),
('Adrienne Bell', 43, 'Female', 'AB+', 'Cancer', 'Aetna', 14238.3178139376),
('Emily Johnson', 36, 'Male', 'A+', 'Asthma', 'UnitedHealthcare', 48145.1109510418),
('Edward Edwards', 21, 'Female', 'AB-', 'Diabetes', 'Medicare', 19580.8723448609),
('Christina Martinez', 20, 'Female', 'A+', 'Cancer', 'Cigna', 45820.4627215945),
('Jasmine Aguilar', 82, 'Male', 'AB+', 'Asthma', 'Cigna', 50119.2227915485),
('Christopher Berg', 58, 'Female', 'AB-', 'Cancer', 'UnitedHealthcare', 19784.6310622107),
('Michelle Daniels', 72, 'Male', 'O+', 'Cancer', 'Medicare', 12576.7956090502),
('Aaron Martinez', 38, 'Female', 'A-', 'Hypertension', 'Medicare', 7999.58687960418),
('Connor Hansen', 75, 'Female', 'A+', 'Diabetes', 'Cigna', 43282.2833577043),
('Robert Bauer', 68, 'Female', 'AB+', 'Asthma', 'UnitedHealthcare', 33207.7066337296),
('Brooke Brady', 44, 'Female', 'AB+', 'Cancer', 'UnitedHealthcare', 40701.5992273087),
('Ms. Natalie Gamble', 46, 'Female', 'AB-', 'Obesity', 'Blue Cross', 12263.3574250213),
('Haley Perkins', 63, 'Female', 'A+', 'Arthritis', 'UnitedHealthcare', 24499.8479037365),
('Mrs. Jamie Campbell', 38, 'Male', 'AB-', 'Obesity', 'Cigna', 17440.4654441246),
('Luke Burgess', 34, 'Female', 'A-', 'Hypertension', 'Blue Cross', 18843.0230178341),
('Daniel Schmidt', 63, 'Male', 'B+', 'Asthma', 'Cigna', 23762.2035790595),
('Timothy Burns', 67, 'Female', 'A-', 'Asthma', 'Blue Cross', 42.5145885533243),
('Christopher Bright', 48, 'Male', 'B+', 'Asthma', 'Aetna', 17695.9116223438),
('Kathryn Stewart', 58, 'Female', 'O+', 'Arthritis', 'Aetna', 5998.10290819591),
('Dr. Eileen Thompson', 59, 'Male', 'A+', 'Asthma', 'Aetna', 25250.0524282161),
('Paul Henderson', 72, 'Female', 'AB+', 'Hypertension', 'Medicare', 33211.295419012),
('Peter Fitzgerald', 73, 'Male', 'AB+', 'Obesity', 'Medicare', 19746.8320076043),
('Cathy Small', 51, 'Female', 'O-', 'Asthma', 'Blue Cross', 26786.5295553112),
('Mr. Kenneth Moore', 34, 'Female', 'A+', 'Diabetes', 'UnitedHealthcare', 18834.8013411783),
('Mary Hunter', 38, 'Female', 'O-', 'Hypertension', 'Cigna', 32643.2993532771),
('Joshua Oliver', 63, 'Female', 'B+', 'Hypertension', 'Aetna', 5767.01105381601),
('Thomas Martinez', 34, 'Male', 'B-', 'Asthma', 'Cigna', 47909.1288098749),
('James Patterson', 23, 'Female', 'A+', 'Arthritis', 'UnitedHealthcare', 25835.3235946882),
('William Cooper', 78, 'Male', 'AB-', 'Arthritis', 'Medicare', 17993.2262000155),
('Erin Ortega', 43, 'Male', 'AB-', 'Cancer', 'Medicare', 21185.9535303942),
('Nicole Rodriguez', 30, 'Female', 'AB+', 'Diabetes', 'Blue Cross', 8408.94935429195),
('David Anderson', 25, 'Female', 'AB+', 'Asthma', 'Medicare', 45453.4185456651),
('Denise Torres', 33, 'Male', 'AB+', 'Diabetes', 'Aetna', 4397.77699541333),
('Cassandra Robinson', 26, 'Female', 'B-', 'Hypertension', 'Aetna', 9380.32596752843),
('Nicole Lucero', 70, 'Female', 'O-', 'Diabetes', 'Cigna', 48290.6934073641),
('Pamela Fernandez', 57, 'Female', 'B-', 'Obesity', 'Medicare', 32973.9408329662),
('Christopher Lee', 74, 'Female', 'B-', 'Hypertension', 'Cigna', 49943.2784987872),
('Thomas Morse', 81, 'Male', 'A+', 'Hypertension', 'Cigna', 35633.9554543878),
('Mr. Eric Lane', 49, 'Female', 'A-', 'Asthma', 'Cigna', 25966.3286102209),
('Katherine Smith', 26, 'Female', 'AB+', 'Obesity', 'UnitedHealthcare', 21784.4450707236),
('Paul Williams', 81, 'Female', 'AB-', 'Cancer', 'Medicare', 42684.5588845502),
('Lynn Martinez', 65, 'Male', 'O+', 'Cancer', 'Medicare', 45585.8865599394),
('Christopher Chapman', 31, 'Female', 'O+', 'Hypertension', 'Cigna', 29615.4418636461),
('Chris Frye', 58, 'Male', 'A-', 'Diabetes', 'Cigna', 36992.2736882838),
('Kyle Bennett', 22, 'Male', 'O+', 'Hypertension', 'UnitedHealthcare', 28051.4994839463),
('Brandon Collins', 77, 'Female', 'O+', 'Asthma', 'Cigna', 16320.2324472718),
('Michael Liu', 30, 'Male', 'AB-', 'Hypertension', 'Medicare', 30590.5418063406),
('Stephanie Kent', 42, 'Female', 'A-', 'Cancer', 'Aetna', 14681.0163601259),
('Jesse Banks', 67, 'Female', 'AB+', 'Cancer', 'Aetna', 21879.5319110635),
('Peggy Lee', 24, 'Female', 'A-', 'Obesity', 'UnitedHealthcare', 6767.63439654494),
('Tamara Hernandez', 84, 'Female', 'B-', 'Asthma', 'Cigna', 19973.4629261595),
('Mr. David Pierce Md', 73, 'Female', 'A-', 'Hypertension', 'UnitedHealthcare', 14362.3144875023),
('Bethany Moore', 55, 'Female', 'A+', 'Cancer', 'Cigna', 10300.6573113759),
('Michael Mills', 23, 'Male', 'O-', 'Hypertension', 'Aetna', 37951.6649098497),
('Kyle Wiley', 40, 'Female', 'AB-', 'Cancer', 'Aetna', 6733.99094706883),
('Jacqueline Jordan', 51, 'Male', 'O+', 'Hypertension', 'Aetna', 17839.7456516471),
('Ashley Gutierrez', 83, 'Male', 'AB+', 'Obesity', 'Aetna', 24637.0900640332),
('Kim Scott', 63, 'Male', 'A-', 'Asthma', 'UnitedHealthcare', 39723.1660514278),
('Travis Carter', 18, 'Male', 'A+', 'Cancer', 'UnitedHealthcare', 48407.3862911005),
('Larry Rodgers', 23, 'Female', 'B-', 'Hypertension', 'Cigna', 5517.39364222399),
('Nancy Glover', 58, 'Male', 'A-', 'Hypertension', 'Medicare', 19183.1688853955),
('Jessica King', 27, 'Male', 'AB-', 'Cancer', 'Medicare', 8320.66080328743),
('Christopher Gonzalez', 59, 'Male', 'B+', 'Diabetes', 'Medicare', 10107.1876510572),
('John Hartman', 27, 'Male', 'B-', 'Hypertension', 'Cigna', 49402.2983725271),
('Michael Miller', 31, 'Male', 'B+', 'Diabetes', 'UnitedHealthcare', 35776.8151114537),
('Erica Myers', 19, 'Female', 'A+', 'Arthritis', 'Medicare', 20227.8637267447),
('Carol Patterson', 29, 'Female', 'O+', 'Cancer', 'Blue Cross', 19328.1185790799),
('Jose Lopez', 18, 'Male', 'A-', 'Obesity', 'Aetna', 46956.5457306324),
('Kevin Simmons Jr.', 24, 'Male', 'AB-', 'Cancer', 'Cigna', 10709.6903889001),
('Duane Haney', 27, 'Male', 'AB-', 'Diabetes', 'Aetna', 45353.9907773854),
('Jonathan Yates', 57, 'Female', 'AB-', 'Arthritis', 'Aetna', 8451.00175847895),
('John Thomas', 74, 'Female', 'A+', 'Arthritis', 'UnitedHealthcare', 29850.8797281837),
('Adrian Buckley', 22, 'Female', 'A-', 'Arthritis', 'Blue Cross', 42696.5211638991),
('April Santiago', 33, 'Female', 'B-', 'Diabetes', 'Cigna', 2305.13913953849),
('Diane Schultz', 57, 'Male', 'B+', 'Arthritis', 'UnitedHealthcare', 44437.4706733572),
('Timothy Myers', 61, 'Male', 'B+', 'Cancer', 'UnitedHealthcare', 29504.3874422114),
('Nicole Hughes', 20, 'Male', 'O+', 'Arthritis', 'Blue Cross', 34617.7883449372),
('Chad Moreno', 67,'Male', 'AB+', 'Hypertension', 'Aetna', 46814.0111951116),
('Sean Jennings', 80, 'Female', 'AB-', 'Diabetes', 'Blue Cross', 20257.5442829324),
('Diane Branch', 44, 'Male', 'O+', 'Obesity', 'Cigna', 22841.3638769056),
('Cindy Orozco', 26, 'Female', 'B-', 'Asthma', 'Medicare', 10283.7168581291),
('Patricia Medina', 80, 'Male', 'AB+', 'Cancer', 'UnitedHealthcare', 1586.47660143828),
('Kayla Padilla', 63, 'Male', 'B-', 'Asthma', 'Aetna', 34774.3511270575),
('Juan Klein', 58, 'Female', 'B-', 'Arthritis', 'UnitedHealthcare', 24870.1036589338),
('William Hill', 38, 'Female', 'A+', 'Cancer', 'Cigna', 39476.9475143799),
('Carl Best', 60, 'Male', 'B+', 'Hypertension', 'Blue Cross', 26062.434320291),
('Tina Griffin', 49, 'Male', 'B+', 'Cancer', 'Medicare', 25302.1126340112),
('Mr. Tyler Taylor Phd', 80, 'Male', 'A+', 'Diabetes', 'UnitedHealthcare', 10661.5106491327),
('Taylor Howell Dds', 35, 'Female', 'B+', 'Diabetes', 'Blue Cross', 30358.1945795447),
('Michael Martin', 84, 'Male', 'A+', 'Asthma', 'Cigna', 23684.5254727448),
('Heather Miller', 76, 'Male', 'A+', 'Diabetes', 'Aetna', 3908.94656794631),
('Catherine Gardner', 79, 'Female', 'A-', 'Hypertension', 'Medicare', 25503.673806852),
('Anne Thompson', 76, 'Female', 'O+', 'Diabetes', 'Aetna', 6312.60769101852),
('Todd Cooper', 55, 'Female', 'A+', 'Diabetes', 'UnitedHealthcare', 21772.3413986496),
('Phillip Lyons', 53, 'Male', 'B-', 'Cancer', 'Blue Cross', 30437.001787641),
('Mark Ford', 18, 'Male', 'B+', 'Asthma', 'UnitedHealthcare', 28837.6770525072),
('Marcus Zamora', 69, 'Male', 'O+', 'Arthritis', 'Cigna', 25425.727862607),
('Katie Henry', 70, 'Male', 'B+', 'Diabetes', 'Aetna', 7187.2723460995),
('William Morton', 21, 'Male', 'A+', 'Diabetes', 'UnitedHealthcare', 3125.73647660125),
('Katrina Martin', 47, 'Male', 'A-', 'Diabetes', 'Medicare', 31516.1007343743),
('Hunter Mckay', 85, 'Male', 'A-', 'Arthritis', 'UnitedHealthcare', 40014.7623484579),
('Dwayne Davis', 28,'Male', 'O+', 'Cancer', 'Medicare', 40782.9278084865),
('Sarah Caldwell', 62, 'Male', 'A-', 'Obesity', 'Cigna', 3879.08460181339),
('David Higgins', 49, 'Female', 'B-', 'Arthritis', 'Medicare', 24948.4778240269),
('Bradley Combs', 52, 'Male', 'AB-', 'Hypertension', 'Cigna', 37734.7421803869),
('Christina Schmitt', 53, 'Male', 'B+', 'Cancer', 'UnitedHealthcare', 27360.4618905512),
('Colton Strong', 55, 'Male', 'AB-', 'Asthma', 'Aetna', 37405.6965286312),
('Mark Price', 18, 'Male', 'B-', 'Arthritis', 'Medicare', 31485.9731617159),
('Suzanne Schneider', 52, 'Male', 'AB-', 'Hypertension', 'Medicare', 23737.399323627),
('Michael Hurley', 67, 'Male', 'AB-', 'Obesity', 'Aetna', 3326.38267468151),
('Lindsey Lambert', 82, 'Female', 'A+', 'Hypertension', 'Medicare', 23067.6721652454),
('Rebecca Parsons', 37, 'Female', 'O+', 'Asthma', 'Aetna', 8521.21425267109),
('Judy Johnson', 52, 'Female', 'AB-', 'Cancer', 'Cigna', 47985.1673383277),
('Tonya Campbell', 37, 'Female', 'B+', 'Asthma', 'UnitedHealthcare', 25230.2468818024),
('James Ross', 83, 'Female', 'A+', 'Diabetes', 'Blue Cross', 10352.2084867408),
('Sara Cook', 33, 'Male', 'O-', 'Arthritis', 'Medicare', 6175.86724929242);

INSERT INTO hospitals_info (hospital_name, room_no, doctor_name)
VALUES 
('Sons and Miller', 328, 'Matthew Smith'),
('Kim Inc', 265, 'Samantha Davies'),
('Cook PLC', 205, 'Tiffany Mitchell'),
('Hernandez Rogers and Vang', 450, 'Kevin Wells'),
('White-White', 458, 'Kathleen Hanna'),
('Nunez-Humphrey', 389, 'Taylor Newton'),
('Group Middleton', 389, 'Kelly Olson'),
('Powell Robinson and Valdez', 277, 'Suzanne Thomas'),
('Sons Rich and', 316, 'Daniel Ferguson'),
('Padilla-Walker', 249, 'Heather Day'),
('Schaefer-Porter', 394, 'John Duncan'),
('Lyons-Blair', 288, 'Douglas Mayo'),
('Powers Miller, and Flores', 134, 'Kenneth Fletcher'),
('Rivera-Gutierrez', 309, 'Theresa Freeman'),
('Morris-Arellano', 182, 'Roberta Stewart'),
('Cline-Williams', 465, 'Maria Dougherty'),
('Cervantes-Wells', 114, 'Erica Spencer'),
('Torres, and Harrison Jones', 449, 'Justin Kim'),
('Houston PLC', 260, 'Justin Moore Jr.'),
('Hammond Ltd', 465, 'Denise Galloway'),
('Jones LLC', 115, 'Krista Smith'),
('Williams-Davis', 295, 'Gregory Smith'),
('Clark-Mayo', 327, 'Vanessa Newton'),
('and Sons Smith', 119, 'Donna Martinez MD'),
('Wilson Group', 109, 'Stephanie Kramer'),
('Garner-Bowman', 162, 'Angela Contreras'),
('Brown, and Jones Weaver', 401, 'Wendy Glenn'),
('Serrano-Dixon', 157, 'James Ellis'),
('Gardner-Miller', 223, 'Jared Bruce Jr.'),
('Guerrero-Boone', 293, 'Brandy Mitchell'),
('Hart Ltd', 371, 'Jacob Huynh'),
('Cruz-Santiago', 108, 'Kristina Frazier'),
('Group Duncan', 245, 'John Hartman'),
('Lopez-Phillips', 494, 'Heather Garcia'),
('Poole Inc', 285, 'Lynn Young'),
('Sons and Cox', 228, 'Emma Allison'),
('LLC Martin', 481, 'Laura Myers'),
('Espinoza-Stone', 212, 'Travis Parsons'),
('and Garcia Morris Cunningham,', 113, 'Christine Johnson'),
('Walton-Meyer', 272, 'Emily Taylor'),
('PLC Young', 478, 'William Reynolds'),
('Meadows Group', 196, 'Jennifer Carter'),
('and Howell Brooks, Rogers', 418, 'Matthew Thomas'),
('and Mcclure White Boone,', 410, 'Mary Logan'),
('Gates Brown, and Stuart', 328, 'Kristin Martinez'),
('Group Armstrong', 300, 'Daniel Murphy'),
('Ltd Schwartz', 211, 'Emily Patterson'),
('Nelson-Phillips', 413, 'Heather Smith'),
('Knight and Nguyen, Riggs', 157, 'John Smith'),
('Lopez PLC', 138, 'Cameron Young'),
('Fernandez and Phillips, Singh', 456, 'Vicki Nguyen'),
('Beck-Galloway', 234, 'Mary Moss'),
('Decker Glover, and Christensen', 492, 'Alexander Garcia'),
('Nelson Walker Myers, and', 180, 'Patrick Burns'),
('Mitchell-Navarro', 250, 'Kayla Powers'),
('Group Delgado', 296, 'Julia Cox'),
('and Montes Graves, Thomas', 330, 'Penny Pruitt'),
('Hall-Bentley', 405, 'Mrs. Lori Hurst PhD'),
('Taylor-Nguyen', 300, 'Stephen Carr'),
('Hunter-Grant', 306, 'Jacob Daniel'),
('Miller-Lawson', 333, 'Tyler Braun'),
('Scott-Kelly', 244, 'Cindy Ellis'),
('Moss and Ferguson, Baker', 325, 'Megan Hahn'),
('and Mason Smith Chase,', 113, 'Eric Kelly'),
('Khan, and Rodriguez Fischer', 378, 'Jennifer Larson'),
('Sons Watson and', 468, 'William Hess'),
('Rhodes-Carey', 368, 'Patricia Dunn'),
('Bullock-Ramsey', 263, 'Jack Jackson'),
('Clark Brown, and Myers', 489, 'Jonathan Drake'),
('Jackson and Lane, Dillon', 241, 'Ian Benitez'),
('Turner Cook, Banks and', 231, 'Jamie Baker'),
('Miles, and Weaver Hudson', 377, 'Erika Jackson'),
('Evans Ltd', 407, 'Amanda Garcia'),
('Sons and Schaefer', 263, 'Raven Wong'),
('Sons Hodges and', 135, 'Cynthia Scott'),
('Simpson-Mccall', 131, 'Mark Padilla'),
('Lin Thompson Wells, and', 102, 'Julie Ramirez'),
('Jones-Scott', 249, 'Jacob Rich'),
('Howe-Kelly', 255, 'Mark Hartman Jr.'),
('and Sons Reyes', 422, 'Timothy Baker'),
('Shaw-Young', 320, 'Lori Sanchez'),
('Inc Skinner', 134, 'Connie Boyd'),
('Clark-Johnson', 255, 'James Tucker'),
('Perez and Sons', 410, 'Juan Acevedo'),
('Kemp LLC', 273, 'Julie Finley'),
('LLC Dixon', 395, 'Miguel Parker'),
('and Morales Jennings Cook,', 152, 'Jermaine Peters'),
('Group Hood', 321, 'Lisa Edwards'),
('Lindsey Inc', 428, 'Matthew Walker'),
('Ltd Wang', 482, 'Gregory Hansen'),
('Inc Ford', 268, 'Jessica Cruz'),
('Dean-Hawkins', 120, 'Robert Salazar'),
('Walter PLC', 318, 'Kyle Patterson'),
('Sons Horn and', 162, 'John Summers'),
('Powell Ward, and Mercado', 428, 'Scott Grant'),
('James Ltd', 144, 'David Ruiz'),
('Kemp-Munoz', 226, 'Kyle Smith'),
('Henderson-Taylor', 459, 'Jason Price'),
('Parsons, Hartman Martinez and', 208, 'Stephanie Clements'),
('Luna Inc', 227, 'Steven James'),
('Hernandez, Ritter and Huffman', 115, 'Jeremiah Wolf'),
('Reed LLC', 402, 'Roberto Petersen'),
('Thompson-Walker', 442, 'Christina Hammond'),
('Group Nguyen', 418, 'Patricia Colon'),
('Newton-White', 425, 'Dominic Mitchell'),
('Ltd Thomas', 373, 'Wendy Davis'),
('Pierce Ward, Torres and', 290, 'Daniel Carson'),
('Evans and Hall Schneider,', 361, 'Erin Henderson MD'),
('Stout-Brown', 251, 'Christopher Butler'),
('Cruz Ltd', 231, 'Samuel Robles'),
('Stewart Sons and', 212, 'Benjamin Webb'),
('Hall Roberts and Duarte,', 440, 'Krystal Fox'),
('Ramirez-Robinson', 414, 'Bruce Garrett'),
('Garcia, and Bishop Hernandez', 424, 'Jonathan Watson'),
('and Brown Oneal, Shah', 307, 'Christopher Guerra'),
('Group White', 476, 'Steven Adams'),
('Hughes and Erickson, Anderson', 388, 'Victoria Patel'),
('Lane-Kelly', 326, 'Louis Bell'),
('Cox-Hester', 394, 'Michael Baker'),
('Jarvis Scott, Fleming and', 138, 'Douglas Fleming');

INSERT INTO patients_status 
VALUES
(1, 1, '2024-01-31', '2024-02-02', 'Normal', 'Paracetamol', 'Urgent'),
(2, 2, '2019-08-20', '2019-08-26', 'Inconclusive', 'Ibuprofen', 'Emergency'),
(3, 3, '2022-09-22', '2022-10-07', 'Normal', 'Aspirin', 'Emergency'),
(4, 4, '2020-11-18', '2020-12-18', 'Abnormal', 'Ibuprofen', 'Elective'),
(5, 5, '2022-09-19', '2022-10-09', 'Abnormal', 'Penicillin', 'Urgent'),
(6, 6, '2023-12-20', '2023-12-24', 'Normal', 'Ibuprofen', 'Urgent'),
(7, 7, '2020-11-03', '2020-11-15', 'Inconclusive', 'Paracetamol', 'Emergency'),
(8, 8, '2021-12-28', '2022-01-07', 'Inconclusive', 'Paracetamol', 'Emergency'),
(9, 9, '2020-07-01', '2020-07-14', 'Abnormal', 'Aspirin', 'Elective'),
(10, 10, '2021-05-23', '2021-06-22', 'Inconclusive', 'Paracetamol', 'Elective'),
(11, 11, '2020-04-19', '2020-04-22', 'Normal', 'Paracetamol', 'Urgent'),
(12, 12, '2023-08-13', '2023-09-05', 'Inconclusive', 'Lipitor', 'Urgent'),
(13, 13, '2019-12-12', '2019-12-28', 'Abnormal', 'Penicillin', 'Emergency'),
(14, 14, '2020-05-22', '2020-06-19', 'Normal', 'Lipitor', 'Urgent'),
(15, 15, '2021-10-08', '2021-10-13', 'Normal', 'Paracetamol', 'Urgent'),
(16, 16, '2023-01-01', '2023-01-11', 'Inconclusive', 'Aspirin', 'Elective'),
(17, 17, '2020-06-23', '2020-07-14', 'Normal', 'Paracetamol', 'Elective'),
(18, 18, '2020-03-08', '2020-04-02', 'Abnormal', 'Paracetamol', 'Urgent'),
(19, 19, '2021-03-04', '2021-03-14', 'Abnormal', 'Aspirin', 'Elective'),
(20, 20, '2022-11-15', '2022-11-22', 'Normal', 'Penicillin', 'Elective'),
(21, 21, '2023-06-28', '2023-07-02', 'Normal', 'Aspirin', 'Elective'),
(22, 22, '2020-01-21', '2020-02-09', 'Normal', 'Lipitor', 'Urgent'),
(23, 23, '2022-05-12', '2022-06-10', 'Inconclusive', 'Lipitor', 'Urgent'),
(24, 24, '2021-08-02', '2021-08-12', 'Inconclusive', 'Lipitor', 'Urgent'),
(25, 25, '2020-05-15',	'2020-06-08', 'Inconclusive', 'Paracetamol', 'Emergency'),
(26, 26, '2020-05-15',	'2020-05-20', 'Abnormal', 'Aspirin', 'Urgent'),
(27, 27, '2023-12-23',	'2024-01-19', 'Normal', 'Ibuprofen', 'Elective'),
(28, 28, '2022-06-21',	'2022-06-30', 'Abnormal', 'Lipitor', 'Emergency'),
(29, 29, '2021-01-03',	'2021-01-16', 'Normal', 'Penicillin', 'Emergency'),
(30, 30, '2023-10-03',	'2023-10-12', 'Abnormal', 'Paracetamol', 'Elective'),
(31, 31, '2019-08-18',	'2019-09-01', 'Inconclusive', 'Ibuprofen', 'Urgent'),
(32, 32, '2019-11-03', '2019-11-29', 'Abnormal', 'Penicillin', 'Urgent'),
(33, 33, '2023-05-18',	'2023-06-15', 'Normal', 'Penicillin', 'Elective'),
(34, 34, '2023-05-24',	'2023-06-03', 'Normal', 'Ibuprofen', 'Elective'),
(35, 35, '2020-01-17',	'2020-02-10', 'Normal', 'Lipitor', 'Emergency'),
(36, 36, '2021-01-07',	'2021-01-26', 'Abnormal', 'Lipitor', 'Elective'),
(37, 37, '2019-10-14',	'2019-10-19', 'Inconclusive', 'Paracetamol', 'Urgent'),
(38, 38, '2021-12-19',	'2022-01-16', 'Normal', 'Ibuprofen', 'Urgent'),
(39, 39, '2022-03-12',	'2022-03-29', 'Abnormal', 'Lipitor', 'Emergency'),
(40, 40, '2021-01-17',	'2021-01-29', 'Abnormal', 'Penicillin', 'Urgent'),
(41, 41, '2021-09-15',	'2021-10-05', 'Normal', 'Lipitor', 'Emergency'),
(42, 42, '2020-01-27',	'2020-02-09', 'Normal', 'Aspirin', 'Urgent'),
(43, 43, '2022-06-24',	'2022-07-18', 'Normal', 'Paracetamol', 'Elective'),
(44, 44, '2021-06-09',	'2021-07-01', 'Normal', 'Paracetamol', 'Urgent'),
(45, 45, '2020-08-23',	'2020-09-08', 'Abnormal', 'Penicillin', 'Urgent'),
(46, 46, '2022-10-12',	'2022-11-02', 'Normal', 'Penicillin', 'Emergency'),
(47, 47, '2021-12-01',	'2021-12-09', 'Normal', 'Paracetamol', 'Elective'),
(48, 48, '2020-05-04',	'2020-05-13', 'Normal', 'Aspirin', 'Urgent'),
(49, 49, '2023-09-09',	'2023-09-23', 'Abnormal', 'Ibuprofen', 'Urgent'),
(50, 50, '2019-07-19',	'2019-07-29', 'Abnormal', 'Ibuprofen', 'Urgent'),
(51, 51, '2024-04-05',	'2024-04-22', 'Inconclusive', 'Paracetamol', 'Emergency'),
(52, 52, '2019-06-15',	'2019-07-05', 'Abnormal', 'Ibuprofen', 'Emergency'),
(53, 53, '2022-10-29',	'2022-11-20', 'Inconclusive', 'Penicillin', 'Urgent'),
(54, 54, '2022-04-08',	'2022-04-13', 'Abnormal', 'Lipitor', 'Elective'),
(55, 55, '2023-08-17',	'2023-09-11', 'Inconclusive', 'Ibuprofen', 'Elective'),
(56, 56, '2023-11-05',	'2023-11-07', 'Inconclusive', 'Paracetamol', 'Emergency'),
(57, 57, '2023-04-09',	'2023-04-21', 'Normal', 'Paracetamol', 'Emergency'),
(58, 58, '2022-09-21',	'2022-09-25', 'Inconclusive', 'Ibuprofen', 'Emergency'),
(59, 59, '2021-01-21',	'2021-02-06', 'Normal', 'Ibuprofen', 'Urgent'),
(60, 60, '2020-07-10',	'2020-07-20', 'Abnormal', 'Paracetamol', 'Elective'),
(61, 61, '2019-11-06',	'2019-11-22', 'Inconclusive', 'Paracetamol', 'Elective'),
(62, 62, '2024-04-07',	'2024-05-04', 'Inconclusive', 'Ibuprofen', 'Emergency'),
(63, 63, '2022-07-06',	'2022-07-18', 'Normal', 'Aspirin', 'Emergency'),
(64, 64, '2022-08-03',	'2022-08-10', 'Inconclusive', 'Aspirin', 'Elective'),
(65, 65, '2020-05-08',	'2020-06-01', 'Abnormal', 'Aspirin', 'Emergency'),
(66, 66, '2019-12-09',	'2019-12-21', 'Abnormal', 'Lipitor', 'Urgent'),
(67, 67, '2019-11-21',	'2019-12-08', 'Abnormal', 'Penicillin', 'Emergency'),
(68, 68, '2023-01-07',	'2023-01-27', 'Inconclusive', 'Lipitor', 'Elective'),
(69, 69, '2024-02-06',	'2024-02-10', 'Normal', 'Penicillin', 'Emergency'),
(70, 70, '2020-01-30',	'2020-02-12', 'Normal', 'Penicillin', 'Elective'),
(71, 71, '2022-10-24',	'2022-11-07', 'Normal', 'Ibuprofen', 'Urgent'),
(72, 72, '2022-01-09',	'2022-01-15', 'Inconclusive', 'Aspirin', 'Emergency'),
(73, 73, '2023-12-28',	'2024-01-02', 'Abnormal', 'Paracetamol', 'Emergency'),
(74, 74, '2021-09-16',	'2021-10-14', 'Abnormal', 'Penicillin', 'Urgent'),
(75, 75, '2023-07-24',	'2023-08-11', 'Abnormal', 'Paracetamol', 'Elective'),
(76, 76, '2021-11-13',	'2021-12-07', 'Inconclusive', 'Paracetamol', 'Emergency'),
(77, 77, '2023-10-11',	'2023-10-27', 'Normal', 'Penicillin', 'Urgent'),
(78, 78, '2021-01-30',	'2021-02-04', 'Inconclusive', 'Penicillin', 'Emergency'),
(79, 79, '2021-11-21',	'2021-12-05', 'Inconclusive', 'Penicillin', 'Emergency'),
(80, 80, '2024-03-02',	'2024-03-26', 'Inconclusive', 'Ibuprofen', 'Urgent'),
(81, 81, '2020-12-04',	'2020-12-08', 'Abnormal', 'Ibuprofen', 'Emergency'),
(82, 82, '2020-08-26',	'2020-08-27', 'Abnormal', 'Penicillin', 'Urgent'),
(83, 83, '2023-11-12',	'2023-12-12', 'Abnormal', 'Penicillin', 'Elective'),
(84, 84, '2020-05-30',	'2020-06-14', 'Inconclusive', 'Aspirin', 'Emergency'),
(85, 85, '2023-05-12',	'2023-06-10', 'Abnormal', 'Ibuprofen', 'Emergency'),
(86, 86, '2022-07-07',	'2022-07-23', 'Normal', 'Ibuprofen', 'Emergency'),
(87, 87, '2020-09-24',	'2020-10-08', 'Inconclusive', 'Penicillin', 'Emergency'),
(88, 88, '2023-08-19',	'2023-08-25', 'Inconclusive', 'Ibuprofen', 'Emergency'),
(89, 89, '2023-05-16',	'2023-06-01', 'Abnormal', 'Aspirin', 'Elective'),
(90, 90, '2022-08-22',	'2022-09-07', 'Inconclusive', 'Paracetamol', 'Elective'),
(91, 91, '2022-06-17',	'2022-06-28','Abnormal', 'Penicillin', 'Elective'),
(92, 92, '2022-11-05',	'2022-11-25', 'Abnormal', 'Lipitor', 'Emergency'),
(93, 93, '2021-09-10',	'2021-09-18', 'Inconclusive', 'Ibuprofen', 'Elective'),
(94, 94, '2022-09-06',	'2022-09-27', 'Inconclusive', 'Ibuprofen', 'Urgent'),
(95, 95, '2021-04-17',	'2021-05-10', 'Inconclusive', 'Lipitor', 'Elective'),
(96, 96, '2019-08-19',	'2019-08-26', 'Abnormal', 'Lipitor', 'Elective'),
(97, 97, '2024-03-24',	'2024-04-14', 'Abnormal', 'Aspirin', 'Elective'),
(98, 98, '2022-12-10',	'2022-12-31', 'Normal', 'Ibuprofen', 'Elective'),
(99, 99, '2022-09-14',	'2022-09-18', 'Normal', 'Aspirin', 'Elective'),
(100, 100, '2022-10-18', '2022-11-11', 'Abnormal', 'Aspirin', 'Elective'),
(101, 101, '2021-11-13',	'2021-11-21', 'Normal', 'Aspirin', 'Elective'),
(102, 102, '2022-07-08',	'2022-07-25', 'Normal', 'Aspirin', 'Emergency'),
(103, 103, '2023-06-25',	'2023-07-11', 'Normal', 'Ibuprofen', 'Urgent'),
(104, 104, '2019-07-09',	'2019-08-05', 'Inconclusive', 'Penicillin', 'Elective'),
(105, 105, '2021-05-14',	'2021-06-03', 'Abnormal', 'Aspirin', 'Emergency'),
(106, 106, '2024-01-15',	'2024-02-07', 'Abnormal', 'Ibuprofen', 'Elective'),
(107, 107, '2019-09-30',	'2019-10-15', 'Inconclusive', 'Aspirin', 'Elective'),
(108, 108, '2021-03-05',	'2021-03-20', 'Abnormal', 'Penicillin', 'Emergency'),
(109, 109, '2021-05-14',	'2021-06-06', 'Abnormal', 'Penicillin', 'Elective'),
(110, 110, '2023-06-08',	'2023-07-05', 'Abnormal', 'Ibuprofen', 'Elective'),
(111, 111, '2022-05-13',	'2022-05-20', 'Normal', 'Paracetamol', 'Elective'),
(112, 112, '2022-09-22',	'2022-10-14', 'Normal', 'Ibuprofen', 'Emergency'),
(113, 113, '2023-08-25',	'2023-09-18', 'Normal', 'Lipitor', 'Urgent'),
(114, 114, '2019-06-02',	'2019-06-04', 'Inconclusive', 'Lipitor', 'Emergency'),
(115, 115, '2021-11-19',	'2021-12-12', 'Normal', 'Ibuprofen', 'Elective'),
(116, 116, '2019-12-02',	'2019-12-13', 'Abnormal', 'Penicillin', 'Elective'),
(117, 117, '2020-08-21',	'2020-09-06', 'Inconclusive', 'Penicillin', 'Elective'),
(118, 118, '2021-02-12',	'2021-03-11', 'Inconclusive', 'Ibuprofen', 'Elective'),
(119, 119, '2024-01-13',	'2024-01-22', 'Abnormal', 'Aspirin', 'Urgent'),
(120, 120, '2021-12-26',	'2022-01-12', 'Abnormal', 'Aspirin', 'Urgent');

# Checking the datas
SELECT 
    *
FROM
    hospitals_info
LIMIT 5;

SELECT 
    *
FROM
    patients_info;

SELECT 
    *
FROM
    patients_status
WHERE
    medication IS NULL;

# Patients who have cancer
SELECT 
    patient_id, patient_name, age
FROM
    patients_info
WHERE
    medical_condition = 'Cancer';

# Number of patients who get medical insurance from UnitedHealthCare Co.Ltd
SELECT 
    COUNT(*)
FROM
    patients_info
WHERE
    insurance_provider = 'UnitedHealthCare';

# Name of patient who have diabetes and older than 60
SELECT 
    patient_name, age
FROM
    patients_info
WHERE
    medical_condition = 'Diabetes'
        AND age > 60;

# Which patient had been submitted to which hospital between year 2020 and 2023
SELECT 
    patient_id, hospital_id
FROM
    patients_status
WHERE
    admission_date BETWEEN '2020-01-01' AND '2023-12-31';

# Number of patients who need to take 'Ibup-something'
SELECT 
    COUNT(patient_id) AS number_of_patients
FROM
    patients_status
WHERE
    medication LIKE ('Ibu%');

# Number of doctors in each hospital
SELECT 
    hospital_name, COUNT(doctor_name) AS number_of_doctors
FROM
    hospitals_info
GROUP BY hospital_name
ORDER BY hospital_name DESC;

# List of insurance companies who cost more than 200000
SELECT 
    insurance_provider, SUM(bills)
FROM
    patients_info
GROUP BY insurance_provider
HAVING SUM(bills) > 200000
ORDER BY SUM(bills) ASC;

# Name of patients who is submitted to 'Wilson Group','Group Middleton', 'Padilla-Walker', 'Torres, and Harrison Jones' hospitals
SELECT 
    h.hospital_name, pi.patient_name
FROM
    patients_info pi
        JOIN
    patients_status ps ON pi.patient_id = ps.patient_id
        JOIN
    hospitals_info h ON ps.hospital_id = h.hospital_id
WHERE
    h.hospital_name IN ('Wilson Group' , 'Group Middleton',
        'Padilla-Walker',
        'Torres, and Harrison Jones')
GROUP BY h.hospital_name , pi.patient_name
ORDER BY h.hospital_name ASC;

# Lists of patients who needed to admit hospital for more than 1 week
SELECT 
    pi.patient_name,
    pi.medical_condition,
    SUM(DATEDIFF(ps.discharge_date, ps.admission_date)) AS total_days
FROM
    patients_status ps
        JOIN
    patients_info pi ON ps.patient_id = pi.patient_id
GROUP BY pi.patient_name , pi.medical_condition
HAVING total_days > 7
ORDER BY total_days ASC;

# Name the patients who don't recovered and still need to test again
SELECT 
    patient_name, age, medical_condition
FROM
    patients_info
WHERE
    patient_id NOT IN (SELECT 
            patient_id
        FROM
            patients_status
        WHERE
            test_result = 'Normal')
ORDER BY age ASC;

# Name the patient who is submitted to Cervantes-Wells hospital and became normal in his/her test result
SELECT 
    patient_name, age, medical_condition
FROM
    patients_info
WHERE
    patient_id IN (SELECT 
            ps.patient_id
        FROM
            patients_status ps
                JOIN
            hospitals_info h ON ps.hospital_id = h.hospital_id
        WHERE
            test_result = 'Normal'
                AND hospital_name = 'Cervantes-Wells');

# Updating data
UPDATE patients_status 
SET 
    test_result = 'Recovered',
    admission_type = 'Normal'
WHERE
    patient_id = 1;

# Checking the updated data
SELECT 
    *
FROM
    patients_status
WHERE
    patient_id = 1;

# Deleting datas
DELETE FROM patients_status 
WHERE
    patient_id = 1;

# Creating view
CREATE OR REPLACE VIEW v_more_than_1week_patients AS
    SELECT 
        pi.patient_name,
        pi.medical_condition,
        SUM(DATEDIFF(ps.discharge_date, ps.admission_date)) AS total_days
    FROM
        patients_status ps
            JOIN
        patients_info pi ON ps.patient_id = pi.patient_id
    GROUP BY pi.patient_name , pi.medical_condition
    HAVING total_days > 7
    ORDER BY total_days ASC;

# Creating trigger
CREATE TABLE patients_status_log (
    patient_id INT,
    hospital_id INT,
    admission_date DATE,
    discharge_date DATE,
    test_result VARCHAR(50),
    medication VARCHAR(50),
    admission_type VARCHAR(50),
    changed_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

DELIMITER $$
CREATE TRIGGER after_update_patients_status
AFTER UPDATE ON patients_status
FOR EACH ROW
BEGIN
INSERT INTO after_update_patients_status
VALUES (NEW.patient_id, NEW.hospital_id, NEW.admission_date, NEW.discharge_date, NEW.test_result, NEW.medication, NEW.admission_type);
END $$

DELIMITER ;

# Creating stored procedure
DROP PROCEDURE IF EXISTS avg_bills;

DELIMITER $$
CREATE PROCEDURE avg_bills (IN p_insurance_provider VARCHAR(50))
BEGIN
SELECT insurance_provider, AVG(bills)
FROM patients_info
WHERE insurance_provider = p_insurance_provider
GROUP BY insurance_provider;
END $$

DELIMITER ;

CALL avg_bills ('UnitedHealthcare');

SELECT * FROM patients_status
LIMIT 20;

SELECT MIN(age), MAX(age)
FROM patients_info;

SELECT 
    patient_id,
    patient_name,
    blood_type,
    CASE
        WHEN age <= 30 THEN 'Young Adult'
        WHEN age <= 45 THEN 'Adult'
        WHEN age <= 60 THEN 'Middle Age'
        ELSE 'Senior Adult'
    END AS type_of_ages
FROM
    patients_info;

# Rank the degree of patients who are provided by Blue Cross health insurance co.ltd and became normal result
SELECT 
    ps.patient_id,
    pi.medical_condition,
    h.doctor_name,
    h.hospital_name,
    ps.admission_type,
    SUM(DATEDIFF(ps.discharge_date, ps.admission_date)) AS total_days,
    CASE
        WHEN SUM(TO_DAYS(ps.discharge_date) - TO_DAYS(ps.admission_date)) < 5 THEN 'Mild'
        WHEN SUM(DAY(ps.discharge_date) - DAY(ps.admission_date)) BETWEEN 5 AND 12 THEN 'Average'
        ELSE 'Severe'
    END AS degree_of_medical_status
FROM
    patients_status ps
        JOIN
    patients_info pi ON ps.patient_id = pi.patient_id
        JOIN
    hospitals_info h ON ps.hospital_id = h.hospital_id
WHERE
    insurance_provider = 'Blue Cross'
        AND test_result = 'Normal'
GROUP BY ps.patient_id , pi.medical_condition , h.doctor_name , h.hospital_name , ps.admission_type;

