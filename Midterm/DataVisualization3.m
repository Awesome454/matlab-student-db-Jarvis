%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24

%Graph function
function DataVisualization3(FigHandle)
    %Data
        ages = [20,19,20,17,22,21,19,20,19,22];
        % Plot a histogram of age distribution
       histogram(ages, 'FaceColor', 'g');
        title('Age Distribution of Students');
        xlabel('Age');
        ylabel('Number of Students');
    end