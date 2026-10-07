clc; clear; close all;

n = 1000;
area = 500;
k = 20;
rounds = 100;

%% 1. Deployment
[x,y] = deploy_nodes(n,area);

%% 2. Clustering
[idx,C] = cluster_kmeans(x,y,k);

%% 3. Energy
energy = rand(1,n);

%% 4. Cluster Head
CH = select_CH_HLTFA(x,y,energy,k);

%% 5. Communication
node_communication(x,y,idx,CH);

%% 6. Routing
routing_simple(x,y,1,CH(1));

%% 7. Security
security_AES('SoilMoisture:45');

%% 8. QoS
[D,H,S,L] = qos_metrics_compare(rounds);

%% 9. Graphs
plot_results_compare(D,H,S,L);

disp('✅ PROJECT RUN SUCCESSFULLY');