%% part 7
GC = Imprt_Data ('P03_GroupC.dat');
data = GC.Data_Set
time = [data(:).Time]
horizaontal = [data(:).Horizontal_dispacement]
vertical = [Data(:).vertical_displacement]

% plot time, horizontal; time,vertial; horizontal,vertial
plot(time,horizontal)
saveas(gef,'Time Vs Horizontal.png')

plot(time,vertial)
saveas(gef,'Time Vs Vertial.png')

plot(horizontal,vertial)
saveas(gef,'Horizontal Vs Vertial.png')