function Plot(a,b)
load('Data.mat')%loads data to plot
fig = figure;%creates fugure window so that the plots can be saved as images
h = 3.05; %height of ring
%if conditions so that only the specified plot is generated.
%CONDITIONS:
% a == 1 - Shot 1 Data
% a == 2 - Shot 2 Data
% a == 3 - Shot 3 Data

% b == 1 - Time(x axis) vs Horizontal Displacement(y axis)
% b == 2 - Time(x axis) vs Vertical Displacement (y axis)
% b == 3 - Horizontal Displacement(x axis) vs Vertical Displacement
% b == 4 - b3 plot vs Theoretical


if a == 1
    if b == 1
        plot([DATA.timeone],[DATA.Horizontalone])
        title('Shot 1-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b == 2
        plot([DATA.timeone],[DATA.Verticalone]+h)
        title('Shot 1-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    elseif b == 3
        plot([DATA.Horizontalone],[DATA.Verticalone]+h)
        title('Shot 1-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')
    elseif b == 3
        plot([DATA.Horizontalone],[DATA.Verticalone]+h)
        title('Shot 1-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')
    %elseif b == 4
%         plot([DATA.Horizontaltwo],[DATA.Verticaltwo])
%         title('Shot 2-Horizontal vs Vertical')
%         xlabel('Horizontal')
%         ylabel('Vertical')    
    end
elseif a == 2
    if b == 1
        plot([DATA.timetwo],[DATA.Horizontaltwo])
        title('Shot 2-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b == 2
        plot([DATA.timetwo],[DATA.Verticaltwo])
        title('Shot 2-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    end
elseif a == 3
    if b == 1
        plot([DATA.timethree],[DATA.Horizontalthree])
        title('Shot 3-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b == 2
        plot([DATA.timethree],[DATA.Verticalthree])
        title('Shot 3-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    elseif b == 3
        plot([DATA.Horizontalthree],[DATA.Verticalthree])
        title('Shot 3-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')

    end
end
saveas(fig,'f.fig');
end
