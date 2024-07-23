create database Smartcity;
use Smartcity
show tables;

CREATE TABLE school (
    sno INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone_no VARCHAR(15),
    distance DECIMAL(5, 2),
    ratings DECIMAL(2, 1),
    emails VARCHAR(255)
);
INSERT INTO school (sno, name, address, phone_no, distance, ratings, emails) VALUES
(1, 'Delhi Public School', 'Mathura Road, Delhi', '011-2956444', 1.0, 4.5, 'dps.mathura@example.com'),
(2, 'Modern School', 'Barakhamba Road, Delhi', '011-23311618', 6.0, 4.7, 'modern.barakhamba@example.com'),
(3, 'Tagore International School', 'Vasant Vihar, Delhi', '011-26142270', 11.0, 4.3, 'tagore.vasantvihar@example.com'),
(4, 'Amity International School', 'Saket, Delhi', '011-29561698', 4.8, 4.6, 'amity.saket@example.com'),
(5, 'Springdales School', 'Pusa Road, Delhi', '011-25743344', 7.3, 4.2, 'springdales.pusa@example.com'),
(6, 'The Shri Ram School', 'Moulsari Avenue, Delhi', '011-4616155', 9.0, 4.8, 'shriram.moulsari@example.com'),
(7, 'Apeejay School', 'Sheikh Sarai, Delhi', '011-29252371', 7.6, 4.4, 'apeejay.sheikh@example.com'),
(8, 'Bluebells School International', 'Kailash, Delhi', '011-26429133', 8.0, 4.1, 'bluebells.kailash@example.com'),
(9, 'DAV Public School', 'Pitampura, Delhi', '011-27312110', 1.3, 4.3, 'dav.pitampura@example.com'),
(10, 'Bal Bharati Public School', 'Ganga Ram Hospital Marg, Delhi', '011-25717452', 10.2, 4.5, 'balbharati.ganga@example.com'),
(11, 'Ryan International School', 'Vasant Kunj, Delhi', '011-26892787', 8.7, 4.0, 'ryan.vasant@example.com'),
(12, 'Delhi Public School', 'R.K. Puram, Delhi', '011-26171267', 12.0, 4.6, 'dps.rkpuram@example.com'),
(13, 'Delhi Public School', 'Dwarka, Delhi', '011-25074472', 10.6, 4.5, 'dps.dwarka@example.com'),
(14, 'Tagore International School', 'East of Kailash, Delhi', '011-26419830', 14.0, 4.4, 'tagore.kailash@example.com'),
(15, 'Springdales School', 'Dhaula Kuan, Delhi', '011-24116657', 5.9, 4.5, 'springdales.dhaula@example.com'),
(16, 'Sanskriti School', 'Chanakyapuri, Delhi', '011-26883335', 15.3, 4.6, 'sanskriti.chanakyapuri@example.com'),
(17, 'Cambridge School', 'Srinivaspuri, Delhi', '011-26321606', 12.8, 4.1, 'cambridge.srinivaspuri@example.com'),
(18, 'Mount Carmel School', 'Dwarka, Delhi', '011-25319350', 18.0, 4.5, 'mountcarmel.dwarka@example.com'),
(19, 'Hansraj Model School', 'Punjabi Bagh, Delhi', '011-25226600', 19.0, 4.4, 'hansraj.punjabi@example.com'),
(20, 'Laxman Public School', 'Hauz Khas, Delhi', '011-26963197', 20.0, 4.3, 'laxman.hauzkhas@example.com');



CREATE TABLE hospitals (
    sno INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone_no VARCHAR(15),
    distance DECIMAL(5, 2),
    ratings DECIMAL(2, 1),
    email VARCHAR(255)
);

INSERT INTO hospitals (sno, name, address, phone_no, distance, ratings, email) VALUES
(1, 'AIIMS', 'Ansari Nagar, New Delhi, Delhi 110029', '011-26588500', 2.5, 4.5, 'info@aiims.edu'),
(2, 'Fortis Hospital', 'B-22, Sector 62, Noida, Uttar Pradesh 201301', '0120-2400222', 5.0, 4.2, 'contact.noida@fortishealthcare.com'),
(3, 'Max Super Speciality Hospital', '1,2 Press Enclave Road, Saket, New Delhi, Delhi 110017', '011-26515050', 3.0, 4.3, 'info@maxhealthcare.com'),
(4, 'BLK Super Speciality Hospital', 'Pusa Road, New Delhi, Delhi 110005', '011-30403040', 4.0, 4.1, 'info@blkhospital.com'),
(5, 'Sir Ganga Ram Hospital', 'Rajinder Nagar, New Delhi, Delhi 110060', '011-25750000', 6.4, 4.0, 'contact@sgrh.com'),
(6, 'Indraprastha Apollo Hospital', 'Sarita Vihar, Mathura Road, New Delhi, Delhi 110076', '011-26925858', 7.5, 4.4, 'info@apollohospitals.com'),
(7, 'Medanta - The Medicity', 'CH Baktawar Singh Road, Sector 38, Gurugram, Haryana 122001', '0124-4141414', 12.8, 4.6, 'info@medanta.org'),
(8, 'Manipal Hospitals', 'Palam Vihar, Gurugram, Haryana 122017', '0124-4855555', 15.0, 4.3, 'info.gurgaon@manipalhospitals.com'),
(9, 'Max Super Speciality Hospital', 'FC-50, C & D Block, Shalimar Bagh, New Delhi, Delhi 110088', '011-49784978', 8.0, 4.1, 'shalimarbagh@maxhealthcare.com'),
(10, 'Fortis Escorts Heart Institute', 'Okhla Road, New Delhi, Delhi 110025', '011-47135000', 3.6, 4.5, 'contact@fortisescorts.com'),
(11, 'Apollo Spectra Hospitals', 'A-19/A, Jangpura, New Delhi, Delhi 110014', '011-41504150', 1.3, 4.0, 'info@apollospectra.com'),
(12, 'Moolchand Medcity', 'Lajpat Nagar III, New Delhi, Delhi 110024', '011-42000000', 5.5, 4.2, 'info@moolchandhealthcare.com'),
(13, 'Venkateshwar Hospital', 'Sector 18A, Dwarka, New Delhi, Delhi 110075', '011-48555555', 4.6, 4.3, 'info@venkateshwarhospitals.com'),
(14, 'Fortis Hospital', 'A Block, Shalimar Bagh, New Delhi, Delhi 110088', '011-45302222', 11.0, 4.1, 'contact.shalimarbagh@fortishealthcare.com'),
(15, 'Max Super Speciality Hospital', '108A, IP Extension, Patparganj, New Delhi, Delhi 110092', '011-43033333', 6.5, 4.2, 'patparganj@maxhealthcare.com'),
(16, 'Primus Super Speciality Hospital', 'Chandragupt Marg, Chanakyapuri, New Delhi, Delhi 110021', '011-66206620', 3.5, 4.4, 'info@primushospital.com'),
(17, 'Artemis Hospital', 'Sector 51, Gurugram, Haryana 122001', '0124-6767999', 16.0, 4.5, 'info@artemishospitals.com'),
(18, 'AIIMS', 'Jhajjar Road, Badsa, Haryana 124105', '0124-3201188', 17.0, 4.7, 'contact@aiimsbadsa.edu'),
(19, 'Maharaja Agrasen Hospital', 'West Punjabi Bagh, New Delhi, Delhi 110026', '011-40777555', 8.7, 4.3, 'info@maharajaagrasen.com'),
(20, 'Bhagwan Mahavir Hospital', 'H-4/5, Pitampura, New Delhi, Delhi 110034', '011-27026969', 19.0, 4.0, 'contact@bmhdelhi.com');

select * from hospitals;

CREATE TABLE malls (
    sno INT PRIMARY KEY,
    name VARCHAR(100),
    address VARCHAR(255),
    phone_no VARCHAR(15),
    distance DECIMAL(5, 2),
    ratings DECIMAL(2, 1),
    email VARCHAR(255)
);

show databases;