syms a alph d th
A = [ cos(th) -cos(alph)*sin(th) sin(alph)*sin(th) a*cos(th)
      sin(th) cos(alph)*cos(th) -sin(alph)*cos(th) a*sin(th)
      0       sin(alph)          cos(alph)         d
      0       0                   0                  1];
    
syms L1 L2 L3  
A1 = subs(A,{th,d,a,alph},{0,20,0,pi/2});
A2 = subs(A,{th,d,a,alph},{0,0,20,0});
A3 = subs(A,{th,d,a,alph},{0,0,20,0});

T1 = A1;
T2 = A1*A2;
T3 = A1*A2*A3;
disp(T1)
disp(T2)
disp(T3);

% Visulization
scatter3(0,0,0,'k^','LineWidth',3,'MarkerFaceColor','k');
xlabel('X0')
ylabel('Y0')
zlabel('Z0');
axis([-50 50 -50 50 -50 50]);
hold on;

line([0 T1(1,4)], [0 T1(2,4)], [0 T1(3,4)], 'Color', 'y', 'LineWidth', 2); 
scatter3(T1(1,4), T1(2,4), T1(3,4), 'ro', 'LineWidth', 3, 'MarkerFaceColor','r'); 

line([T1(1,4) T2(1,4)], [T1(2,4) T2(2,4)], [T1(3,4) T2(3,4)], 'Color', 'c', 'LineWidth',2); 
scatter3(T2(1,4), T2(2,4), T2(3,4), 'bo', 'LineWidth', 3, 'MarkerFaceColor', 'b');

line([T2(1,4) T3(1,4)], [T2(2,4) T3(2,4)], [T2(3,4) T3(3,4)], 'Color', 'm', 'LineWidth',2); 
scatter3(T3(1,4), T3(2,4), T3(3,4), 'go', 'LineWidth', 3, 'MarkerFaceColor','g');