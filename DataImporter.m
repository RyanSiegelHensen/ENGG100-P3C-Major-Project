%This script Completes objectives one through to three and manages the import and structuring of the group’s data set
% This finds the Group’s data and then stores its reference as in the workspace.
FileReference = fopen('P03_GroupC.dat','r');
%Specifies the format that we are looking for in the group’s data file to surround the data values.
formatSpec = '&*#,,%f#,##   %f&&#   %f&,&*';
%Initialises ImportedData as to create an array to store the values in later.
ImportedData= [];
%Will cycle through line searching for each instance there is of data that fits within the format Spec definition in the Group’s data.
while ~feof(FileReference) 
   %Will run trough each line.
   fgets(FileReference); 
   %This stores the data entries found to fit in the format and each group if data entries in format get’s put into its own row due to the “’” near the end opposed to a new row each piece of data.
   ParticularRow = fscanf(FileReference,formatSpec)'; 
   %Inserts the data found to fit in the format and adds it into the larger array of all values found as a new entry.
   ImportedData = [ImportedData; ParticularRow]; 
end
%Closes the open file “FileReference”.
fclose(FileReference);

%% Following having now retrieved the relevant values out of the data given as a large matrix this now continues to structure it for easier usage.

%Taking the dimensions of the entries in the ImportedData array of all the found values.
SizeofArray = size(ImportedData);
%Reformatting the dimensions above as to take only its number of rows and store that as a 1-dimensional variable.
SizeofArray = SizeofArray(1,1);
%Finds the locations where the shots start and end by searching for which entries in the first column (time) are equal to zero which shows where each data set start. 
ShotPositions = find(ImportedData(:,1)==0)-1;
%Takes the dimensions of the ShotPositions array taking the number of entries to determine how many shots are in the data set provided.
NumberShotPositions = size(ShotPositions);
%As there is only one relevant value this converts it into a one-dimensional array for simplicity in further access.
NumberShotPositions = NumberShotPositions(1);
%Initialises the Shotlengths array that measures the number of row entries per shot while simultaneously inserting the final value due to the unique calculations for the final shot’s length.
ShotLengths(NumberShotPositions) = SizeofArray-ShotPositions(NumberShotPositions);
%This for loop cycles through all the shots (besides the last) and finds each shots number of row entries. 
for i=1:(NumberShotPositions-1)
    %Finds length of entries per shot e.g. between N(3)=100 and N(4)=199 will be equal too 199-100 or 99 entries for that shot generalised to form N(i+1)-N(i) for shot 3.
    ShotLengths(i) = ShotPositions(i+1)-ShotPositions(i);
end

%This bit now gets around to throwing the data into a tidy structure.
%Initialises/Resets the Previous variable.
Previous = 0;
%This for loop deals with dropping each of the values in the array into their relevant positions in the structure depending on their shot, data type, and position.
%This for loop will run until it has gone through all the shots in the data.
for i=1:NumberShotPositions
    %This defines/updates each of the category names to be used per shot.
    %This cycles makes the label for the time category for each shot.
    label1 = ['Time' , num2str(i)];
    %This cycles makes the label for the Horizontal category for each shot.
    label2 = ['Horizontal' , num2str(i)];
    %This cycles makes the label for the Vertical category for each shot.
    label3 = ['Vertical' , num2str(i)];
        
    %Cycling through each row in the current shot from the ImportedData array and putting every entry from the data array into their respective category and row.
    for j = 1:ShotLengths(i)
        %Places the data in column 1 (time) of the ImportedData into a category with the name specified by the current definition of label1.
        DATA(j).(label1) = ImportedData(j+Previous,1); 

        %Does the same as line above but for Xdisplacement and then continues to convert the displacement to be instead the displacement from the player not from the hoop by subtracting current displacement from the hoop from the initial displacement from the hoop for the current shot (why there is a previous to offset the values to be accessing the values in the current shot).
        DATA(j).(label2)=(ImportedData(Previous+1,2)-ImportedData(Previous+j,2));
        %Places the data in column 3 (vertical displacement from hoop) of the ImportedData into a category with the name specified by the current definition of label3.
        DATA(j).(label3)=ImportedData(j+Previous,3);
    end
    %Increments the shots already ran through as too ensure it does all the shots and doesn’t just keep redoing the first shot’s values.
    Previous = Previous + ShotLengths(i);
end
%Saves the final structure produced after having ran through all the shots as a file in the current folder as too be accessed/used in further calculations.
save('Data.mat','DATA')
