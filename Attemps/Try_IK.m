PX = 30.618621784789735;
PY = 30.618621784789735;
PZ = 85;

L_1 = 20;
L_2 = 50;
L_3 = 40;

L(1) = Link([0 L_1 0 pi/2]);
L(2) = Link([0 0 L_2 0]);
L(3) = Link([0 0 L_3 0]);

Robot = SerialLink(L);
Robot.name = 'RRR_Robot';

T = [ 1 0 0 PX;
      0 1 0 PY;
      0 0 1 PZ;
      0 0 0 1];
  
J = Robot.ikine(T,'mask', [1 1 1 0 0 0]);

disp (J);
q_deg = rad2deg(J);

% Display the joint angles
disp('Joint angles in degrees:');
disp(q_deg(1,1)); 
disp(q_deg(1,2)); 
disp(q_deg(1,3)); 

% Robot.plot(J);
Robot.plot(J,'workspace',[-100 100 -100 100 -100 100]);