%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24

% Class for database of students
classdef StudentDatabase
    
    % Array of Student objects    
        properties
            Students  
        end
        
        methods
            % Create empty student database
            function obj = StudentDatabase()
                obj.Students = [];
            end
            
            % Save database to a file
            function saveDatabase(obj, filename)
                try
                    save(filename, 'obj');
                    disp(['Database saved to ' filename]);
                catch
                    error('Error saving database to file.');
                end
            end
            
            % Loads database from file
            function obj = loadDatabase(obj, filename)
                try
                    loadedObj = load(filename);
                    obj = loadedObj.obj;  
                    disp(['Database loaded from ' filename]);
                catch
                    error('Error loading database from file.');
                end
            end
            
            % Adds a new student
            function obj = addStudent(obj, student)
                obj.Students = [obj.Students, student];
            end
            
            % Finds a student by ID
            function student = findStudentByID(obj, ID)
                student = [];
                for i = 1:length(obj.Students)
                    if strcmp(obj.Students(i).ID, ID)
                        student = obj.Students(i);
                        return;
                    end
                end
                disp('Student not found.');
            end
            
            % Creates a list of students by major
            function students = getStudentsByMajor(obj, major)
                students = obj.Students(arrayfun(@(x) strcmp(x.Major, major), obj.Students));
            end
        end
    end