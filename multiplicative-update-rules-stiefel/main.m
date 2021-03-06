clear all
close all

i1 = 5;
i2 = 7;
t = 4;
max_int = 5;
[Y1,Y2] = create_matrices(i1,i2,t,max_int);
[A1,A2,X] = initialization(i1,i2,t);

lambda1 = 0.8;
lambda2 = 0.8;
lambda3 = 0.8;

max_it = 2000;
[A1,A2,X,error] = mult_up_rules_optimization_stiefel(Y1,Y2,A1,A2,X,lambda1,lambda2,lambda3,max_it);

it = 1:(max_it+1);
plot(it,error,'.r','linewidth',3);

grid on
xlabel('Number of iterations');
ylabel('Value of the objective function');
