Th_1 = 0 * pi / 180;
Th_2 = 0 * pi / 180;
Th_3 = 0 * pi / 180;

L_1 = 20;
L_2 = 50;
L_3 = 40;


L(1) = Link([0, L_1, 0, pi/2]);
L(2) = Link([0, 0, L_2, 0]);
L(3) = Link([0, 0, L_3, 0]);

Robot = SerialLink(L);
Robot.name = 'ARM';

Robot.plot([Th_1, Th_2, Th_3]);

T = Robot.fkine([Th_1, Th_2, Th_3]);

X = T(1,1); 
% Y = T(2,4);
% Z = T(3,4);

disp(T);
disp('=======================================')
disp(X);
% disp(Y);
% disp(Z);