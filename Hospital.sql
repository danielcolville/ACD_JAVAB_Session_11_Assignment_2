-- *** SqlDbx Personal Edition ***
-- !!! Not licensed for commercial use beyound 90 days evaluation period !!!
-- For version limitations please check http://www.sqldbx.com/personal_edition.htm
-- Number of queries executed: 347, number of rows retrieved: 32964


USE hospital;
-- a,b
SELECT * FROM patient_registration
WHERE registration_date BETWEEN '02-07-20' AND '08-08-20';

UPDATE patient_registration
SET  name ='Ram'
where registration_number='PT011';



-- c,d,e,f
SELECT name,test_name FROM tests JOIN patient_registration ON patient_registration.registration_number = tests.patient_reg_number
WHERE tests.`date`='08-07-20';

SELECT * FROM patient_registration JOIN doctors ON doctors.id = patient_registration.referral_doctor
WHERE doctors.name='ABC';

SELECT doctors.name,count(DISTINCT registration_number) FROM doctors 
JOIN patient_registration ON patient_registration.referral_doctor = doctors.id
GROUP BY referral_doctor
having count(DISTINCT registration_number) >= ALL(SELECT count( DISTINCT registration_number)
FROM doctors JOIN patient_registration ON patient_registration.referral_doctor = doctors.id
GROUP BY referral_doctor);

UPDATE beds  JOIN patient_registration ON patient_registration.bed_number = beds.id 
SET beds.bed_number=456 WHERE registration_number='PT023';

-- g,h,i,j
UPDATE beds SET status ='not allotted' WHERE bed_number=123;

SELECT * FROM beds WHERE ward_number=10 AND status='not allotted';

SELECT patient_registration.name FROM patient_registration JOIN beds ON beds.id = patient_registration.bed_number 
JOIN doctors ON doctors.id = patient_registration.referral_doctor
WHERE doctors.name='XYZ' AND ward_number=13;

SELECT * FROM patient_registration JOIN doctors ON doctors.id = patient_registration.referral_doctor
WHERE doctors.name LIKE 'das%';