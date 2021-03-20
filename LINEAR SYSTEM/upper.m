function x = upper(U,b)
  % n: panjang array b
  n = length(b);
  
  % nilai awal untuk x indeks terakhir
  x(n,1) = b(n)/U(n,n);
  
  %iterasi untuk indeks n-1 hingga 1 (terbalik)
  for i=n-1:-1:1
    x(i,1) = (b(i) - U(i,i+1:n)*x(i+1:n,1))/U(i,i);
  end
endfunction
