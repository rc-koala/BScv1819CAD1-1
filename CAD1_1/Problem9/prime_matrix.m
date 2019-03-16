function p = prime_matrix(n)
    p = isprime(abs(repmat([1:n], n,1) - repmat([1:n], n, 1)'));
end
