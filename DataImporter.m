%% Grabs It
%This script is robust in the sense it can take in any number of shots not
%just 3 and structure them just fine
FileReference = fopen('P03_GroupC.dat','r');
formatSpec = '&*#,,%f#,##	%f&&#	%f&,&*';
ImportedData= [];
while ~feof(FileReference) %runs forever if nothing further is specified in the while loop that relates
    %will run through each row group has 448 rows and n => 448 in this
   fgets(FileReference); 
   ParticularRow = fscanf(FileReference,formatSpec)'; 
   %this comma in ")';" is what creates new row every 3 entries horizontally
   ImportedData = [ImportedData; ParticularRow]; 
end
fclose(FileReference);
%% Puts it into a structure
SizeofArray = size(ImportedData);
SizeofArray = SizeofArray(1,1);
ShotPositions = find(ImportedData(:,1)==0)-1;
%Finds number of Shots Taken
NumberShotPositions = size(ShotPositions);
NumberShotPositions = NumberShotPositions(1);
%Finds Number of Entries per shot
ShotLengths(NumberShotPositions) = SizeofArray-ShotPositions(NumberShotPositions);
for i=1:(NumberShotPositions-1)
    ShotLengths(i) = ShotPositions(i+1)-ShotPositions(i);
end
%Finds Max Number of Entries in a shot
StructureLength = max(ShotLengths);

%Throws it all into a pretty little Structure
Previous = 0;

for i=1:NumberShotPositions
    label1 = ['Time' , num2str(i)];
    label2 = ['Horizontal' , num2str(i)];
    label3 = ['Vertical' , num2str(i)];
        %putting every element in data array into respective structure row and column
    for j = 1:ShotLengths(i)
        DATA(j).(label1) = ImportedData(j+Previous,1); %Inserts the time column for the structure (shot 1)
        DATA(j).(label2)=ImportedData(Previous+ShotLengths(i)-j+1,2); % Inserts horizontal data column for shot 1
        DATA(j).(label3)=ImportedData(j+Previous,3);%Inserts 
    end
    Previous = Previous + ShotLengths(i);
end
save('Data.mat','DATA')
