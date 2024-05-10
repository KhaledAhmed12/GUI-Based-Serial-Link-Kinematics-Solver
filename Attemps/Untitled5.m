L_1 = 15;
L_2 = 10;



L(1) = Link([0, L_1, 0, -pi/2]);
L(2) = Link([0, L_2, 0, 0]);

Robot = SerialLink(L);
Robot.name = 'ARM';

Robot.plot([0 0],'workspace', [-20 20 -20 20 -20 20]);


for d4_=0:1:1500
Robot.plot([d4_ 0],'workspace', [-50 50 -50 50 -50 50]) 
drawnow
end  