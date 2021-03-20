function [L,U] = funLU(A)
  % n: ukuran matriks A
  [n,n] = size(A);
  
  % inisiasi matriks L sebagai matriks identitas nxn
  L = eye(n);
  
  % iterasi k untuk kolom 1 hingga n-1
  for k = 1:n-1
    
    % iterasi i untuk baris k+1 hingga n sebagai baris
    % yang akan dieliminasi dengan diagonal utama
    for i = k+1:n
      
      % mencari ratio terhadap diagonal utama untuk baris i
      % dan disimpan pada matriks L di posisi yang sesuai
      L(i,k) = A(i,k)/A(k,k);
      
      % proses eliminasi untuk baris i pada matriks A
      A(i,:) = A(i,:) - L(i,k)*A(k,:);
    endfor
  endfor
  U = A;
endfunction


