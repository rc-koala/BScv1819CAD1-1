clear all;
close all;

A = create_matrix_A();
B = create_matrix_B();
C = create_matrix_C();

disp('size(A)')
disp(size(A))
disp('size(B)')
disp(size(B))
disp('size(C)')
disp(size(C))

A + B;
disp('(A + B) same dimensions');
A * B;
disp('(A * B) same dimensions');

try
    A + C;
catch
    disp('cannot perform (A + C). different dimensions')
end

B - A;
disp('(B - A) same dimensions');
A * C;
disp('(A * C) cols of A matches rows of C');

try
    C - B;
catch
    disp('cannot perform (C - B). different dimensions')
end

try
    C * A;
catch
    disp('cannot perform (C * A). different dimensions')
end
