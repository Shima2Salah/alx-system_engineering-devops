This 3-server web infrastructure prioritizes security, continuous monitoring, and the provision of encrypted traffic.

Details About This Infrastructure:

Role of Firewalls:

Firewalls act as a protective barrier for the network, particularly web servers, safeguarding against unwanted and unauthorized users. They serve as intermediaries between the internal and external networks, blocking incoming traffic that meets predefined criteria.
Role of SSL Certificate:

The SSL certificate serves the crucial function of encrypting traffic between web servers and the external network. This encryption mitigates the risk of man-in-the-middle attacks and prevents network sniffers from intercepting and exposing valuable information. SSL certificates ensure privacy, integrity, and identification.
Role of Monitoring Clients:

Monitoring clients are instrumental in observing and evaluating both servers and the external network. They analyze server performance, assess overall health, and promptly alert administrators if servers deviate from expected performance. The monitoring tool provides key metrics about server operations, conducts automated tests on server accessibility, measures response time, and alerts administrators to various issues, including corrupt or missing files, security vulnerabilities, and more.
Issues With This Infrastructure:

Terminating SSL at Load Balancer Level:

If SSL termination occurs at the load balancer level, the traffic between the load balancer and the web servers remains unencrypted, compromising the overall security of the communication.
Single MySQL Server Concern:

Relying on a single MySQL server poses scalability challenges and introduces a potential single point of failure for the entire web infrastructure.
Uniform Server Components Issue:

Having servers with identical components may lead to contention for resources such as CPU, memory, and I/O. This competition can result in poor performance and complicate issue diagnosis. Additionally, such a setup lacks scalability, hindering the ability to easily expand the infrastructure.
