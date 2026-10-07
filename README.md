# Fog IoT Clustering with HLTFA

A MATLAB demonstration of clustering and cluster-head selection for a wireless
sensor network. The script deploys sensor nodes in a square area, forms
geographic clusters, selects candidate cluster heads, visualizes communication
and a route, and plots example quality-of-service (QoS) curves.

> **Scope:** This repository is a simulation/demo, not a complete fog-computing
> platform or a packet-level network simulator. The HLTFA name is retained
> from the project; the source code does not define what the acronym stands for.

## Features

- Random deployment of 1,000 nodes over a 500 × 500 area.
- Custom, fixed-iteration k-means clustering into 20 groups.
- Fitness-based selection of cluster-head candidates using node energy and
  distance from the coordinate origin.
- Cluster, candidate-head, communication, and route visualizations.
- Example energy, packet delivery ratio (PDR), delay, and throughput curves
  labeled for DEEC, HEED, SEC, and HLTFA.
- A small data-encoding demonstration.

## Requirements

- MATLAB with support for the `matlab.net.base64encode` and
  `matlab.net.base64decode` functions.
- No additional third-party MATLAB toolboxes are explicitly used by the
  project source.

## Run

1. Clone or download this repository.
2. In MATLAB, set the current folder to the repository directory.
3. Run:

   ```matlab
   main
   ```

The script opens figures for node deployment, cluster formation, node
communication, routing, and the QoS comparison. Node placement and energy
values are randomized on each run, so the first plots may differ between runs.

## Simulation flow

```text
Random node deployment
        ↓
Geographic k-means clustering
        ↓
Random initial node energy
        ↓
Fitness-based candidate cluster-head selection
        ↓
Communication and route visualizations
        ↓
Data-encoding demonstration
        ↓
Generated QoS comparison curves
```

## Project files

| File | Purpose |
| --- | --- |
| `main.m` | Configures and runs the demo pipeline. |
| `deploy_nodes.m` | Randomly places nodes and plots the deployment. |
| `cluster_kmeans.m` | Assigns nodes to clusters using 10 k-means iterations and plots them. |
| `select_CH_HLTFA.m` | Ranks nodes by the implemented fitness formula and returns the top candidates. |
| `node_communication.m` | Plots cluster membership, candidate heads, sink, and illustrative node-to-head animation. |
| `routing_simple.m` | Draws a direct line between a source node and a selected destination. |
| `security_AES.m` | Prints the input, its Base64 representation, and the decoded text. |
| `qos_metrics_compare.m` | Generates example QoS curves for four method labels. |
| `plot_results_compare.m` | Plots the QoS curves. |

## Interpretation and limitations

The figures and metric curves should be treated as illustrative outputs, not
measured experimental results:

- The QoS values are produced by fixed mathematical formulas; they are not
  calculated from simulated packet transmissions.
- Energy is initialized with random values and is not depleted as nodes
  communicate.
- The cluster-head score is
  `0.6 * energy + 0.4 / (distance from origin + 1)`. Selection ranks nodes
  globally; it does not explicitly constrain one head to each cluster.
- The communication animation is visual only, and the routing figure draws a
  single direct line rather than computing a multi-hop route.
- `security_AES.m` uses Base64 encoding, which is **not encryption** and does
  not provide confidentiality. Do not use it to protect real sensor data.

For research or academic comparisons, replace the illustrative calculations
with a documented network/energy model, use comparable algorithm
implementations, record experimental settings, and report repeated-run
statistics.
