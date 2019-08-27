use hospital;

-- 1
select *
from `patient_registration`
where registration_date > 20020720 and registration_date < 20080820;

-- 2
update `patient_registration`
set `name` = "Ram"
where registration_number = "PT011";

-- 3
select `name`, `results`
from `tests`, `patient_registration`
where `date` = 20080720
and patient_reg_number = registration_number;

-- 4
select count(registration_number)
from patient_registration, doctors
where `doctors`.`name` = "ABC"
and `doctors`.`id` = `patient_registration`.`referral_doctor`;

-- 5
select *
from patient_registration, doctors
where `doctors`.`id` = `patient_registration`.`referral_doctor`;

-- 6
update `beds`, `patient_registration`
set `beds`.bed_number = 456
where registration_number = "PT023"
and `patient_registration`.`bed_number` = `beds`.`bed_number`;

-- 7
update `beds`
set `beds`.`status` = "not allotted"
where `beds`.`bed_number` = 123;

-- 8
select *
from `beds`
where `status` = "not allotted"
and `ward_number` = 10;

-- 9
select distinct `patient_registration`.`name`
from `beds`, `doctors`, `patient_registration`
where `patient_registration`.`gender` = "male"
and `patient_registration`.`referral_doctor` = `doctors`.`id`
and `doctors`.`name` = "XYZ"
and `beds`.`ward_number` = 13;

-- 10
select *
from `patient_registration`, `doctors`
where `age` > 50
and `patient_registration`.`referral_doctor` = `doctors`.`id`
and `doctors`.`name` like "%das%";