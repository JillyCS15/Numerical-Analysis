function [L,U,p] = funLUPivot(A)
  % n: ukuran matriks A
  [n,n] = size(A);
  
  % inisiasi matriks L sebagai matriks identitas nxn
  L = eye(n);
  
  % array yang menyimpan urutan baris
  p = 1:n;
  
  % iterasi k untuk kolom 1 hingga n-1
  for k = 1:n-1
    
    % mencari nilai maksimum dari baris k hingga n pada kolom k 
    % c = nilai maksimum
    % l = indeks dari nilai maksimum
    [c,l] = max(abs(A(k:n,k)));
    
    % adjust indeks sesuai kolom
    l = l+k-1;
    
    % proses tukar baris l dengan k pada matriks A
    temp = A(l,:);
    A(l,:) = A(k,:);
    A(k,:) = temp;
    
    % proses tukar baris l dengan k pada matriks L
    % kolom yang ditukar mulai dari kolom 1 hingga k-1
    temp = L(l,1:k-1);
    L(l,1:k-1) = L(k,1:k-1);
    L(k,1:k-1) = temp;
    
    % proses tukar baris l dengan k pada array p
    temp = p(l);
    p(l) = p(k);
    p(k) = temp;

    
    for i = k+1:n
      L(i,k) = A(i,k)/A(k,k);
      A(i,:) = A(i,:) - L(i,k)*A(k,:);
    endfor
  endfor
  U = A;
endfunction


