function [ eigspost ] = neutralcounter( )
% A function to find the eigenvalue equation of a general A+uB matrix in the
% Jurdjevic form so that we can analyse its eigenvalues.

syms a b c d e f g h k l x y u;                                                                         % Initialising the symbols.
A = [a+u*(x+1i*y) b c d ; e f+u*(x-1i*y) d h ; k l -a+u*(-x+1i*y) -e ; l g -b -f+u*(-x-1i*y)];          % General A+uB matrix.
eigs = eig(A);                                                                                          % Operation to retrieve the eigenvalue vector.
a1 = 2; b1 = 3; c1 = 4; d1 = 5; e1 = 6; f1 = 2; g1 = 4; h1 = 4; k1 = 6; l1 = 4; x1 = 2; y1 = 3; u1 = 5; % Variable value panel.
 
eigspost = subs(eigs(1), [a,b,c,d,e,f,g,h,k,l,x,y,u], [a1,b1,c1,d1,e1,f1,g1,h1,k1,l1,x1,y1,u1]);        % Substitution to include u.
% eigspost = subs(eigs(1), [a,b,c,d,e,f,g,h,k,l,x,y], [a1,b1,c1,d1,e1,f1,g1,h1,k1,l1,x1,y1]);           % Substitution not including u.