function x = lower(L,b)
  % n: panjang array b
  n = length(b);
  
  % nilai awal untuk x[1]
  x(1) = b(1)/L(1,1);
  
  % iterasi untuk indeks 2 sampai terakhir
  for i=2:n
    x(i) = (b(i) - L(i,1:i-1)*x(1:i-1)')/L(i,i);
  endfor
endfunction
