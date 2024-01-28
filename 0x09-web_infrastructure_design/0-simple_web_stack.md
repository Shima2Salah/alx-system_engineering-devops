Single Server Web Infrastructure Overview:
Key Elements:
Server:
A powerful computing system with software to handle incoming requests over a specific network.
Hosts the website reachable via www.foobar.com.
DNS Servers:
Translate name requests to IP addresses, directing end-users to the appropriate server.
Address records match host names to 32-bit IPv4 addresses.
Domain Name:
Unique identifier (e.g., foobar.com) for web accessibility on the World Wide Web.
WWW Record:
The www record in www.foobar.com is an A record pointing to the server's IP address (8.8.8.8).
Web Server (Nginx):
Nginx functions as a web server, managing HTTP requests and delivering content to users' browsers.
It acts as a storage unit for website files, including HTML, images, CSS, and more.
Application Server:
Hosts the website's codebase, executing resource-intensive applications shared among numerous users.
Application Files (Codebase):
The actual codebase contains the logic and functionality of the website.
Database (MySQL):
MySQL serves as a database server storing critical website data like user information, content, and settings.
Communication:
The server communicates with users' computers using HTTP, the foundational protocol for web data transfer.
Challenges:
Single Point of Failure (SPOF):
Vulnerability to downtime due to a single server, risking issues or maintenance disruptions.
Downtime during Maintenance:
The web server restarts during maintenance, causing temporary website unavailability.
Limited Scalability:
Challenging scalability due to a single server housing essential component.
Risk of resource exhaustion or slowed performance during high traffic influxes.

