Import_Data%start the import script

a = input('which set do you want 1 2 or 3: ');%you can change it to ask whatever you want but then set variable a as 1 2 or  3 based on reply inside the function since you dont have space on top level script

b = input('which graph do you want 1 , 2 , 3 or 4: ');%same as above
% 1 is Horizontal Displacement vs Time 
% 2 is Vertical Displacement vs Time 
% 3 is Horizontal Displacement vs Vertical Displacement 
% 4 plots the Theoretical Data vs the Actual Data (Displacement vs
% Time)
Plot(a,b)%Graph it based on a and b

c=input('do you want to save plot as image? [Y/N]:','s');%sve as image or not

if c=='Y'|| c== 'y';Save(a,b);end%if yes save based on a and b

d=input('do you want to continue[Y/N]','s');%plot another one or not

if d=='Y'|| c== 'y';Final;end%if yes recursive call to run this script again