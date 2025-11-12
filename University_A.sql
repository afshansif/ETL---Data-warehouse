Create database University_A;


-- Create table: student_lifestyle_dataset
CREATE TABLE student_lifestyle_dataset (
    student_id SERIAL PRIMARY KEY,
    study_hours_per_day DECIMAL(3,1),
    extracurricular_hours_per_day DECIMAL(3,1),
    sleep_hours_per_day DECIMAL(3,1),
    social_hours_per_day DECIMAL(3,1),
    physical_activity_hours_per_day DECIMAL(3,1),
    gpa DECIMAL(3,2),
    stress_level VARCHAR(20)
);

-- Insert dummy data
INSERT INTO student_lifestyle_dataset 
(study_hours_per_day, extracurricular_hours_per_day, sleep_hours_per_day, social_hours_per_day, physical_activity_hours_per_day, gpa, stress_level)
VALUES
(2.5, 1.0, 7.5, 2.0, 0.5, 3.10, 'Moderate'),
(3.0, 0.5, 6.0, 1.5, 1.0, 3.50, 'Low'),
(1.5, 2.5, 5.5, 3.0, 0.5, 2.80, 'High'),
(4.0, 1.5, 7.0, 2.5, 1.0, 3.90, 'Low'),
(2.0, 1.0, 6.5, 2.0, 0.8, 3.20, 'Moderate'),
(3.5, 0.5, 5.5, 1.5, 0.5, 3.00, 'High'),
(4.5, 1.0, 8.0, 2.0, 1.5, 3.85, 'Low'),
(2.5, 1.5, 6.0, 3.0, 1.0, 3.40, 'Moderate'),
(1.0, 0.5, 5.0, 1.0, 0.3, 2.60, 'High'),
(3.0, 2.0, 7.5, 2.5, 1.2, 3.70, 'Low');


select * from student_lifestyle_dataset;
