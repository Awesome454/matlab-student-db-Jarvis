%Author: Emma Jarvis
%Email:jarvis77@rowan.edu
%Course: MATLAB programming - fall 2024
%Date:11/3/24

   %Graph function
   function DataVisualization1(FigHandle)
    % Data
       GPAs =[3, 3.2, 3.3, 3.7, 2.1, 3.2, 2.7, 3, 3.4, 2.6];
       % Plot histogram of GPA distribution
       histogram(GPAs, 'BinEdges', 0:0.5:4, 'FaceColor', 'b');
       title('GPA Distribution');
       xlabel('GPA');
       ylabel('Number of Students');
   end
   
      