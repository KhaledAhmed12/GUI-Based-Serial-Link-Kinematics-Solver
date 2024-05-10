clf;
clc;
%% Robot Geometry
L1 = 200;
L2 = 80;

%% Joint Variables
t1 = 60;
d2 = 50;
d3 = 100;
t4 = 20;
t5 = 0;
t6 = 0;

%% A matrices
A1 = [cosd(t1) -sin(t1) 0 0;sind(t1) cosd(t1) 0 0;0 0 1 L1;0 0 0 1];
A2 = [1 0 0 0;0 0 1 0;0 -1 0 d2;0 0 0 1];
A3 = [1 0 0 0;0 1 0 0;0 0 1 d3;0 0 0 1];
A4 = [cosd(t4) 0 sind(t4) 0;sind(t4) 0 -cosd(t4) 0;0 1 0 0;0 0 0 1];
A5 = [cosd(t5) 0 -sind(t5) 0;sind(t5) 0 cosd(t5) 0;0 -1 0 0;0 0 0 1];
A6 = [cosd(t6) -sind(t6) 0 0;sind(t6) cosd(t6) 0 0;0 0 1 L2;0 0 0 1];

%% T matrices
T1 = A1;
T2 = A1*A2;
T3 = A1*A2*A3;
T4 = A1*A2*A3*A4;
T5 = A1*A2*A3*A4*A5;
T6 = A1*A2*A3*A4*A5*A6;

%% Visulization
%figure;
scatter3(0,0,0,'k^','LineWidth',3,'MarkerFaceColor','k');
xlabel('X0')
ylabel('Y0')
zlabel('Z0');
axis([-200 200 -200 200 0 500]);
hold on;

line([0 T1(1,4)], [0 T1(2,4)], [0 T1(3,4)], 'Color', 'y', 'LineWidth', 2); 
scatter3(T1(1,4), T1(2,4), T1(3,4), 'ro', 'LineWidth', 3, 'MarkerFaceColor','r'); 

line([T1(1,4) T2(1,4)], [T1(2,4) T2(2,4)], [T1(3,4) T2(3,4)], 'Color', 'c', 'LineWidth',2); 
scatter3(T2(1,4), T2(2,4), T2(3,4), 'bo', 'LineWidth', 3, 'MarkerFaceColor', 'b');

line([T2(1,4) T3(1,4)], [T2(2,4) T3(2,4)], [T2(3,4) T3(3,4)], 'Color', 'm', 'LineWidth',2); 
scatter3(T3(1,4), T3(2,4), T3(3,4), 'go', 'LineWidth', 3, 'MarkerFaceColor','g');

line([T5(1,4) T6(1,4)], [T5(2,4) T6(2,4)], [T5(3,4) T6(3,4)], 'Color', [0.5 0.5 0.5],'LineWidth',2);
scatter3(T6(1,4),T6(2,4),T6(3,4),'ko','LineWidth',3,'MarkerFaceColor','k'); 

% pnt1=T6(1:3,4)+T6(1:3,1:3)*[50;0;0]; 
% pnt2=T6(1:3,4)+T6(1:3,1:3)*[-50;0;0]; 
% pnt3=T6(1:3,4)+T6(1:3,1:3)*[50;0;20]; 
% pnt4=T6(1:3,4)+T6(1:3,1:3)*[-50;0;20];
% 
% line([pnt1(1) pnt2(1)],[pnt1(2) pnt2(2)],[pnt1(3) pnt2(3)],'Color','k','LineWidth',2);
% line([pnt1(1) pnt3(1)],[pnt1(2) pnt3(2)],[pnt1(3) pnt3(3)],'Color','k','LineWidth',2);
% line([pnt2(1) pnt4(1)],[pnt2(2) pnt4(2)],[pnt2(3) pnt4(3)],'Color','k','LineWidth',2);