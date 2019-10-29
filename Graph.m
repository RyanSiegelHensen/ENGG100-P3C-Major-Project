function Graph(a,b)
load('Data.mat')%loads data to plot
f1 = figure;%creates fugure window so that it xan be saved for saving to image purposes
%if conditions so that only required plot is plotted.
if a==1
    if b== 1
        plot([DATA.timeone],[DATA.Horizontalone])
        title('Shot 1-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b== 2
        plot([DATA.timeone],[DATA.Verticalone])
        title('Shot 1-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    elseif b== 3
        plot([DATA.Horizontalone],[DATA.Verticalone])
        title('Shot 1-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')
    end
elseif a==2
    if b== 1
        plot([DATA.timetwo],[DATA.Horizontaltwo])
        title('Shot 2-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b== 2
        plot([DATA.timetwo],[DATA.Verticaltwo])
        title('Shot 2-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    elseif b== 3
        plot([DATA.Horizontaltwo],[DATA.Verticaltwo])
        title('Shot 2-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')
    end
elseif a==3
    if b== 1
        plot([DATA.timethree],[DATA.Horizontalthree])
        title('Shot 3-Time vs Horizontal')
        xlabel('Time')
        ylabel('Horizontal')
    elseif b== 2
        plot([DATA.timethree],[DATA.Verticalthree])
        title('Shot 3-Time vs Vertical')
        xlabel('Time')
        ylabel('Vertical')
    elseif b== 3
        plot([DATA.Horizontalthree],[DATA.Verticalthree])
        title('Shot 3-Horizontal vs Vertical')
        xlabel('Horizontal')
        ylabel('Vertical')

    end
end
saveas(f1,'f.fig');
end
