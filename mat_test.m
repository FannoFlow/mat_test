clear all
disp("BLAS:")
version -blas
disp("LAPACK:")
version -lapack
tic;
for n = 1000:1000:10000
    a = rand(n);
    b = rand(n);
    c = a*b;
    d = a\b;
    e = sin(c);
    f = exp(d);
    g = fft(f);
end
t = toc;
disp("this took " + num2str(t) + " sec")
clear
