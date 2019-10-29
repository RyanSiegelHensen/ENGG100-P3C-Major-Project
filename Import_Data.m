
fileID = fopen('P03_GroupC.dat','r');%file identifier
formatSpec = '&*#,,%f#,##	%f&&#	%f&,&*';%formatspec of supplied data
Data= [];%empty base matrix for concatanation
while ~feof(fileID)%runs untill all lines are read
    fgets(fileID);%to run through each line
    A = fscanf(fileID,formatSpec)';%reads lines and flips them so that they are in proper order
    Data = [Data; A];%the data is conacatanated to a base empty matrix which is changed to itself so the new data gets concatanated to the old one
end
fclose(fileID);

N = find(Data(:,1)==0)-1;%finding where each set ends
R=size(Data);
R=R(1,1);%row lengty or last row of data

%%
%putting stuff into structures
for i=1:N(2,1)%defining start and end of row to read
    %putting every element in data array into respective structure row and column
    DATA(i).timeone=Data(i,1);
    DATA(i).Horizontalone=Data(i,2);
    DATA(i).Verticalone=Data(i,3);
end
j=1;% so the second set is put from row one
for i=(N(2,1)+1):N(3,1)%defining start and end of row to read
    %putting every element in data array into respective structure row and column
    DATA(j).timetwo=Data(i,1);
    DATA(j).Horizontaltwo=Data(i,2);
    DATA(j).Verticaltwo=Data(i,3);
    j=j+1;
end
j=1;%so the third set is put from row one
for i=(N(3,1)+1):R%defining start and end of row to read
    %putting every element in data array into respective structure row and column
    DATA(j).timethree=Data(i,1);
    DATA(j).Horizontalthree=Data(i,2);
    DATA(j).Verticalthree=Data(i,3);
    j=j+1;
end
save('Data.mat','DATA')