
clear all;
clc;

mu=50;
l=2;
pc=0.8;
pm=0.05;
dom=[0 10];

[bestInd,best,worst,meanVal]=myGA(mu,l,pc,pm);

iter=1:100;
subplot(4,1,1),plot(iter,bestInd(:,1),'LineWidth',2);
hold on;
subplot(4,1,1),plot(iter,bestInd(:,2),'LineWidth',2);
title('Best Individuals');
xlabel('# Iterations');
ylabel('Value of x1 & x2');


subplot(4,1,2),plot(iter,best,'LineWidth',2);
title('Best Fitness');
xlabel('# Iterations');
ylabel('Fitness Value');


subplot(4,1,3),plot(iter,meanVal,'LineWidth',2);
title('Mean Fitness');
xlabel('# Iterations');
ylabel('Fitness Value');


subplot(4,1,4),plot(iter,worst,'LineWidth',2);
title('Worst Fitness');
xlabel('# Iterations');
ylabel('Fitness Value');

