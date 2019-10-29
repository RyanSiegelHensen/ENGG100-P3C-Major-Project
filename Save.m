function Save(d,e)
set(0,'DefaultFigureVisible','off')%prevent figure from being dispalyed.
f1 = openfig('f.fig');%opens fig to a variable f1
set(0,'DefaultFigureVisible','on');%turns it back on so that main program can still display figures
%if conditions to create correct figure name
if d==1
    a='Set 1';
elseif d==2
    a='Set 2';
elseif d==3
    a='Set 3';
end
if e==1
    b='Time vs Horizontal';
elseif e==2
    b='Time vs Vertical';
elseif e==3
    b='Horizontal vs Vertical';
end
name=[a,'-',b,'.png'];%figure name is created
saveas(f1,name)%figure f1 is saved
end

