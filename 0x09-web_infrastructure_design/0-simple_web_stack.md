
Single Server Web Infrastructure Overview:

Components:

Server:

A robust computing system with software managing and processing incoming client requests over a specific network.
Hosts the website accessible via www.foobar.com.
DNS Servers:

Translate name requests to IP addresses, controlling user connections based on queries.
Address records match host names to 32-bit IPv4 addresses.
Domain Name:

foobar.com serves as the unique identifier, making the website accessible on the World Wide Web.
WWW Record:

The www record in www.foobar.com is an A record pointing to the server's IP address (8.8.8.8).
Web Server (Nginx):

Nginx, a web server, stores and handles HTTP requests, delivering web pages and content to users' browsers. It acts as a computer storing website files (HTML, images, CSS) and sends them to visiting users' devices.
Application Server:

Hosts the website's codebase, executing resource-intensive applications for a large user base.
Application Files (Codebase):

The actual website codebase containing logic and functionality.
Database (MySQL):

MySQL, a database server, stores critical website data, including user information, content, and settings.
Communication:

The server communicates with users' computers using HTTP, the foundational protocol for web data transfer.
Issues:

Single Point of Failure (SPOF):

Vulnerability to downtime due to a single server, risking issues or maintenance disruptions.
Downtime during Maintenance:

Web server restarts during maintenance cause temporary website unavailability.
Limited Scalability:

Difficult to scale due to one server housing essential components.
Risk of resource exhaustion or slowed performance during high traffic influxes.
