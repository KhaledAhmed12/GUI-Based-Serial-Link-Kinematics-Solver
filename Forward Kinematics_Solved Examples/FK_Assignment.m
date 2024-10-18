syms a alph d th
A = [ cos(th) -cos(alph)*sin(th) sin(alph)*sin(th) a*cos(th)
      sin(th) cos(alph)*cos(th) -sin(alph)*cos(th) a*sin(th)
      0       sin(alph)          cos(alph)         d
      0       0                   0                  1];
    
syms L1 L2 L3 L4 
A1 = subs(A,{a,alph,d,th},{L1,0,0,0});
A2 = subs(A,{a,alph,d,th},{0,pi/2,L2,0});
A3 = subs(A,{a,alph,d,th},{0,-pi/2,L3,pi/2});
A4 = subs(A,{a,alph,d,th},{0,0,L4,0});
H = A1 * A2 * A3 * A4 ;

fprintf("A = " + '\n');
disp(A);
fprintf("===========================================================" + '\n');

fprintf("A1 = " + '\n');
disp(A1);
fprintf("===========================================================" + '\n');

fprintf("A2 = " + '\n');
disp(A2);
fprintf("===========================================================" + '\n');

fprintf("A3 = " + '\n');
disp(A3);
fprintf("===========================================================" + '\n');

fprintf("A4 = " + '\n');
disp(A3);
fprintf("===========================================================" + '\n');

fprintf("H = " + '\n');
disp(H);