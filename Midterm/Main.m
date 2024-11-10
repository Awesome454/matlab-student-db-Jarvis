%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24

% Main script

% Creating the StudentDatabase
database = StudentDatabase();

% Add sample students
s1 = Student('S001', 'Bob', 20, 3, 'Computer Science');
s2 = Student('S002', 'Daisy', 19, 3.2, 'Psychology');
s3 = Student('S003', 'Steve', 20, 3.3, 'Business');
s4 = Student('S004', 'Diana', 17, 3.7, 'Journalism');
s5 = Student('S005', 'Gavin', 22, 2.1, 'Economics');
s6 = Student('S006', 'Gray', 21, 3.2, 'Engineering');
s7 = Student('S007', 'Hannah', 19, 2.7, 'Biology');
s8 = Student('S008', 'Issac', 20, 3, 'English');
s9 = Student('S009', 'Isabella', 19, 3.4, 'Mathematics');
s10 = Student('S010', 'Kayla', 22, 2.6, 'Chemistry');
database = database.addStudent(s1);
database = database.addStudent(s2);
database = database.addStudent(s3);
database = database.addStudent(s4);
database = database.addStudent(s5);
database = database.addStudent(s6);
database = database.addStudent(s7);
database = database.addStudent(s8);
database = database.addStudent(s9);
database = database.addStudent(s10);

% Save the database to a .mat file
database.saveDatabase('studentDB.mat');

% Load the database from the file
database = StudentDatabase();
database = database.loadDatabase('studentDB.mat');

% Find a student by ID and display their info
student = database.findStudentByID('S002');
if ~isempty(student)
    student.displayInfo();
end



% Create figures before calling the functions
Figure1 = figure,
% Pass Figure1 as input
DataVisualization1(Figure1);  

  % Pass Figure2 as input
DataVisualization2(Figure2);

Figure3 = figure;
% Pass Figure as input
DataVisualization3(Figure3);  

