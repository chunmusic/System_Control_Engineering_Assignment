A = [-1,0;1,-2];
B = [0;1];
C = [1,1];
D = 0;
x0 = [1;0]; 

sys = ss(A,B,C,D);

t = 0:0.01:1;
initial(sys,x0,t)