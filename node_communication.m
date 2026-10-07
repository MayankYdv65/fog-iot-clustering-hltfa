function node_communication(x,y,idx,CH)

figure('Color','w'); hold on;

% Colored clusters
colors = hsv(max(idx));

for i=1:max(idx)
    scatter(x(idx==i), y(idx==i), 10, colors(i,:), 'filled');
end

% Cluster heads
plot(x(CH),y(CH),'kp','MarkerFaceColor','y','MarkerSize',10);

% Sink
sink = [250 250];
plot(sink(1),sink(2),'rs','MarkerFaceColor','r');

title('Node Communication');
axis([0 500 0 500]);
grid on;

% Animate few nodes
for i=1:100
    ch = CH(idx(i));
    for t=0:0.3:1
        px = (1-t)*x(i)+t*x(ch);
        py = (1-t)*y(i)+t*y(ch);
        p = plot(px,py,'bo','MarkerFaceColor','b');
        pause(0.001);
        delete(p);
    end
end

end