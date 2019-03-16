clear all;
close all;

l = 4;
my_pascal = pascal(l);
verification = true
for i = 1:l
    for j = 1:l
        if i == 1 || j == 1
            verification = (my_pascal(i, j) == 1);
        else
            verification = (my_pascal(i,j) == my_pascal(i , j - 1) + my_pascal(i - 1, j));
        end
    end
end
if verification
    disp('correct pascal matrix')
end
