%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24

%Graph function
function DataVisualization2(FigHandle)
    % Data
    majors = {'Computer Science', 'Psychology', 'Business', 'Journalism', 'Economics', 'Engineering', 'Biology', 'English', 'Mathematics', 'Chemistry'}; 
    gpas = [3, 3.2, 3.3, 3.7, 2.1, 3.2, 2.7, 3, 3.4, 2.6]; 
    % Create bar chart for average GPA by major
    figure;
    bar(gpas);
    set(gca, 'XTickLabel', majors);
    xlabel('Major');
    ylabel('Average GPA');
    title('Average GPA by Major');
    xtickangle(45);
end