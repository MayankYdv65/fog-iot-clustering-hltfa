function routing_simple(x,y,src,dest)

figure('Color','w'); hold on;

plot(x,y,'b.');

plot([x(src) x(dest)], [y(src) y(dest)], 'r','LineWidth',2);

title('Routing Path');
axis([0 500 0 500]);
grid on;

end