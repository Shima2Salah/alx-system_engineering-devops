This web infrastructure is designed for distribution, aiming to alleviate primary server traffic by offloading some of the load to a replica server. This distribution is facilitated by a load balancer responsible for balancing the load between the primary and replica servers.

Details About This Infrastructure:

Load Balancer Configuration:

The HAProxy load balancer utilizes the Round Robin distribution algorithm, evenly distributing the load among servers based on their weights. This dynamic algorithm allows on-the-go adjustments to server weights.
Load-Balancer Setup:

The HAProxy load balancer implements an Active-Passive setup instead of an Active-Active setup. In an Active-Passive setup, not all nodes are active simultaneously. The next passive node becomes active if the preceding node is inactive, preventing overload on a single node.
Database Primary-Replica (Master-Slave) Cluster:

The infrastructure employs a Primary-Replica setup, where one server serves as the Primary and another as the Replica. The Primary executes read/write requests, while the Replica handles only read requests. Synchronization occurs when the Primary server executes a write operation.
Difference Between Primary and Replica:

The Primary node manages write operations, while the Replica node handles read operations. This distribution decreases read traffic to the Primary node.
Issues With This Infrastructure:

Multiple Single Points Of Failure (SPOFs):

If the Primary MySQL database server is down, the site can't make changes. The server with the load balancer and the application server connecting to the primary database are also potential SPOFs.
Security Concerns:

Data transmitted over the network lacks encryption using an SSL certificate, exposing it to potential spying by hackers. Absence of a firewall on any server makes it impossible to block unauthorized IPs.
Lack of Monitoring:

The infrastructure lacks monitoring tools, making it challenging to assess the status of each server in real-time. Monitoring is crucial for identifying and addressing potential issues promptly.
