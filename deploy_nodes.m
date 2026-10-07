function [x,y] = deploy_nodes(n,area)

x = rand(1,n)*area;
y = rand(1,n)*area;

figure('Color','w');
axis([0 area 0 area]);   % ← set axis FIRST before plotting
hold on;
plot(x,y,'b.','MarkerSize',10);

title('Node Deployment (1000 nodes)');
xlabel('X'); ylabel('Y');
grid on;

end