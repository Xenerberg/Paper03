m_t = 10;
m = 30;
b_1 = 3;
b_2 = 0.5;
k_1 = 10;
k_2 = 1;
A = [0,1;0 0];
P_o = [3,-.1;-.1,1];
H = [1,0];
R = [2,3];
K_1 = inv(P_o)*R';
Q = -((A-K_1*H)'*(P_o) + (P_o)*(A-K_1*H))
sigQ = min(eig(Q));
alpha1 = sigQ/max(eig(P_o));
c = 10;
eps_1 = 0.5;
eps_2 = 0.5;
eps_3 = 0.5;
eps_4 = 0.5;
k_2 = 2%c/2 + (eps_1 + eps_2 + eps_3)/2;
alpha2 = 2*(k_2 - (eps_1 + eps_2 + eps_3)/2);
gamma21 = (1/(eps_1*min(eig((P_o)))))*max(k_2^2,1);
kp = 10;
kd = 30;
lambda = kp/kd;
alpha3 = 2*(lambda - eps_4/2)
gamma23 = lambda^2/eps_2;
gamma24 = 1/(eps_3*m);
alpha4 = 2*kd/m;
gamma34 = 1/(eps_4*m);
P = [-alpha1,0,0,0;gamma21,-alpha2,gamma23,gamma24;0,0,-alpha3,gamma34;0,0,0,-alpha4];
