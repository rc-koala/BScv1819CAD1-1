function x = create_vector_x(a)
    A = (1 / sqrt(2 * pi * 2.5^2))
    B = (-1 * a.^2) / ( 2 * 2.5^2)
    x = A .*exp(B)
end