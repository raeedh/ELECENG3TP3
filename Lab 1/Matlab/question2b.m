%% Create matrices for student grades and maximum grades from csv file
student_grades = csvread('../course_grades_2020.csv',1,1,[1,1,20,11]);
max_grades = csvread('../course_grades_2020.csv',0,1,[0,1,0,11]);


%% Define columns for labs and exam
lab_columns = 2:5;
exam_columns = 7:12;

%% Calculate averages for each student
lab_averages = question2a(student_grades,max_grades,lab_columns);
exam_averages = question2a(student_grades,max_grades,exam_columns);

%% Calculate overall course averages
average_lab_grade_course = mean(lab_averages);
average_exam_grade_course = mean(exam_averages);