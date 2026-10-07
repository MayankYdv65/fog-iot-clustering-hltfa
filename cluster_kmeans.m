function [idx,C] = cluster_kmeans(x,y,k)

data = [x' y'];
n = size(data,1);

C = data(randperm(n,k),:);
idx = zeros(n,1);

for iter=1:10
    
    for i=1:n
        d = sum((C - data(i,:)).^2,2);
        [~,idx(i)] = min(d);
    end
    
    for j=1:k
        pts = data(idx==j,:);
        if ~isempty(pts)
            C(j,:) = mean(pts);
        end
    end
end

% Plot clusters
figure('Color','w'); hold on;
colors = hsv(k);

for i=1:k
    pts = data(idx==i,:);
    scatter(pts(:,1),pts(:,2),10,colors(i,:),'filled');
end

plot(C(:,1),C(:,2),'kp','MarkerFaceColor','y');
title('Cluster Formation');
axis([0 500 0 500]);
grid on;

end