clear all;
close all;

% creating vectors
vector_a = create_vector_a();
vector_b = create_vector_b();
vector_c = create_vector_c();

% solving equations
vector_x = create_vector_x(vector_a);
vector_y = create_vector_y(vector_a, vector_b);
vector_z = create_vector_z(vector_c);

% printing vectors
disp(vector_x);
disp(vector_y);
disp(vector_z);
