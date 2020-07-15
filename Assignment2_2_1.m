A = [0,1;-2,-3];
B = [0;1];
C = [1,2];
D = 0;

sys = ss(A,B,C,D)

tf(sys)