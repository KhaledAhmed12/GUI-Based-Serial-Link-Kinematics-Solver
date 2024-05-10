L1 = Link('d', 0.5, 'a',1, 'alpha', 0); 
L2 = Link('d', 0, 'a',1, 'alpha', 0);
L3 = Link('d',-0.5, 'a', 0, 'alpha',pi);
L4 = Link('d', 0, 'a', 0, 'alpha', 0);
robot = SerialLink ([L1 L2 L3 L4]);
robot.name = 'Robotic Arm';
q= [0 0 0 0];
endeffector = robot.fkine (q);
disp(endeffector);

disp(endeffector.t(1)); % Displaying only the x-coordinate
robot.plot(q);