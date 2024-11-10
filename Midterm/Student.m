%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24


 % Class for storing student information
 classdef Student
   
    
    properties
        ID        
        Name      
        Age       
        GPA       
        Major     
    end
    
    methods
        % Initializes a Student object
        function obj = Student(ID, Name, Age, GPA, Major)
            if nargin > 0
                obj.ID = ID;
                obj.Name = Name;
                obj.Age = Age;
                obj.GPA = GPA;
                obj.Major = Major;
            end
        end
        
        % Display student info
        function displayInfo(obj)
            fprintf('ID: %s\n', obj.ID);
            fprintf('Name: %s\n', obj.Name);
            fprintf('Age: %d\n', obj.Age);
            fprintf('GPA: %.2f\n', obj.GPA);
            fprintf('Major: %s\n', obj.Major);
        end
        
        % Update GPA
        function obj = updateGPA(obj, newGPA)
            if newGPA >= 0 && newGPA <= 4.0
                obj.GPA = newGPA;
                disp(['GPA updated to: ' num2str(newGPA)]);
            else
                error('Invalid GPA value. It must be between 0.0 and 4.0.');
            end
        end
    end
end