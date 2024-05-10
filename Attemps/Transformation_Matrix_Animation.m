H1 = transl(4,2,0);
H2 = H1 * transl(0,3,0);
H3 = H2 * transl(0,0,2);
H4 = H3 * trotz(90);
H5 = H4 * transl(-1,0,0);
H6 = H5 * trotx(-90);

plot3(0,0,0);

axis([0 7 0 7 0 7]);

grid on;
hold on;

tranimate(H1);
tranimate(H1,H2);
tranimate(H2,H3);
tranimate(H3,H4);
tranimate(H4,H5);
tranimate(H5,H6);


