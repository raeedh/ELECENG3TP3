%% Create matrices for student grades and maximum grades from csv file
student_grades = csvread('../course_grades_2020.csv',1,1,[1,1,20,11]);
max_grades = csvread('../course_grades_2020.csv',0,1,[0,1,0,11]);

%% Define columns for labs and exam
lab_columns = 2:5;
exam_columns = 7:12;
midterm_column = 6;

%% Calculate category averages for each student
lab_averages = question2a(student_grades,max_grades,lab_columns);
exam_averages = question2a(student_grades,max_grades,exam_columns);
midterm_averages = question2a(student_grades,max_grades,midterm_column);

%% Calculate overall average for each student
final_grades = 0.3*lab_averages + 0.3*midterm_averages + 0.4*exam_averages;
sorted_final_grades = sort(final_grades,'descend');

fig = figure('Name','Question 2c');
sgtitle('Raeed Hassan','FontSize',20)
set(gcf,'WindowState','maximized');
b = bar(sorted_final_grades);
ylabel('Final grade','FontSize',20);
set(gca,'xticklabel',[])
set(gca,'xtick',[])
exportgraphics(fig,'..\Figures\question2c.png');