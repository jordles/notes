# Networks

## How the internet works:

Computers ➡ Networks ➡ Internet

- A **network** is a collection of nodes (computers) and edges (connections between the nodes).
- A **computer** is a device and the connection between two computers is an edge. Computers allow us to transfer data over a wired or wireless connection / network.
- A **network switch** allows a computer to communicate with other computers
- A network switch can connect to other network switches, which allows two networks to communicate (connect)
- An **interconnected network** is a network that is connected to each other, also known as the **internet**
- The **client-server model** is the most common type of network. Where the client is the browser and the server is the web server

There are actually Internet cables around the world through the ocean floors, that make the client-server exchange possible.These cables consist of 8 fiber wires, each fiber capable of transmitting 53 terabytes per sec.

**bounce-rate** - the rate is which people bounce from a website. The limit is 3 seconds for the client to make a request to the server and the server to fulfill and send the product back

## What is a web server:

- A **server** is a computer that provides a service to **clients**
- A server contains cpu, memory, bandwidth, and hard drive
- A **web server** is a computer that responds to web requests from **web browsers**
- A **data center** is a network of servers, that run a variety of applications(servers) on the internet. They need power, internet connections, and are kept cool up to 24 hours a day
- Data centers are built based on the service purpose. If it is for storing images, it might have a lot of hard drive space. If it is for storing data/or doing complex calculations, it might have a lot of RAM and a faster processor. The physical components of a server is known as the **server hardware**.
- A code that runs on hardware is known as the server software
- Web servers are used to store and serve web pages. They can handle: Website storage and administration, Data storage, Security, and Managing Email.
- **request response cycle** - the process of sending a request to a server and getting a response back. (this is different from the client-server model as the model is more of an umbrella term describing architectural relationships between clients and servers)

Web servers function as website storage, administration, data storage, security, and email management.  
Web servers can handle thousands of requests from clients per second.

**localhost** is a web server running on our local machine. We use it to test our code. When we **deploy,** we utilize real web hosting services that lend us web servers to use for our backend services.

## Websites vs Webpages

More about websites here: [Websites](Website.md)

- A **webpage** is a document that displays images, texts, videos and other content in the web browser. In its simplest form, a webpage is a text document.
- A **website** is a collection of **webpages** or pages.
- A **webpage** can also link to other **websites**, so webpages don't have to relate to each other
- **HTML** (HyperText Markup Language) - it uses markup tags to describe the content of a webpage. The way HTML describes the content is known as markup
- **CSS** (Cascading Style Sheets) - it is a style sheet language used to style the presentation of a document written in HTML
- **Javascript** - JavaScript is a scripting language that enables you to create dynamically updating content, control multimedia, animate images, and pretty much everything else. They are used to add interactivity to web pages
- Every time we update our code, we send a request to the server. A copy of your webpage is sent to the server, and the server sends it back to you.
- Through **page rendering**, the web server sends the HTML to the web browser. The browser renders the HTML(page content) to the webpage

## What is a web browser?

- A **web browser** is a software application that allows you to view websites and web pages by browsing the world wide web / internet.
- A web browser sends a request to a web server and then gets a response back to the browser
- The address bar is used to search for a website. The address is known as the **URL - Uniform Resource Locator**.
- The URL contains the **protocol (http)**, **host (subdomain(www)** - **domain name - top-level domain (.com))** / just domain name is also fine, port (number) (usually optional), and file path
- The browser and the server communicate through the **HTTP protocol**. HTTP requests and responses are sent between the client and the server
- Example of a **request-response cycle**:

  - You open a web browser, which is a software application
  - The web browser sends a request based on the URL across the internet (network) to the web server. The web server is a type of computer that allows other computers to make requests for data.
  - The web server sends a response back (the webpage) to the web browser
  - The webpage is a document that is rendered by the web browser
  - If there is something to be search on that website, we can take the input from user and send a request to the server which grabs data from the database, and sends it back to the browser. All part of the request response cycle.

- So we know <ins>websites and web files are stored in web servers</ins>.

## Web Hosting

- **Web hosting** is a service where you place your websites on web servers. A web hosting service provider is a company that provides web hosting.
- **Shared Hosting** - Pay for a location on a web server, that contains many web hosting accounts. Users share the web hosting accounts, like service processing power, memory, and bandwidth. This means multiple websites that share the same server, which is a cost-effective option for small businesses and personal websites.
- **VPS (Virtual Private Server) Hosting** - Offers more resources than shared hosting, but is more expensive. They allocate a dedicated server for each user.
- **Dedicated Hosting** - Provides a single hardware server for one website, offering maximum performance and security.
- **Cloud Hosting** - a web hosting service that is provided by a third-party company. Websites are run on the cloud environment. They span across multiple physical and virtual servers, should they fail, they will run on a different server and stay online. The main advantage of cloud hosting is that you can use as many resources as you want without the hardware limitation, though you pay based on the resources used. This allows businesses to scale their costs as popularity grows.
- **Reseller Hosting** - A web hosting service provider that allows you to sell your website to others.

A web hosting service we have used in the past is Render.com Render gives us web servers for our backend services through its cloud hosting service.

## Internet Protocols (Core Internet Technologies)
To Learn more about [HTTP](<HTTP.md>)

- **Core internet technologies** are the basic building blocks of internet. They are used to build the internet. They are used to build the web. They are used to build the web servers
- Core internet technologies include : **HTTP, HTTPS, FTP, DNS**
- **IP Addresses** function much like real addresses in a postal system that make it possible for information to be delivered to you.
- **Every computer** on the internet (network) <ins>has an __IP address__</ins> which is a __unique identifier__.
- **IP Routing** is ip packets being routed, much like the postal system figuring out the physical path from your house to the destination.
- Computers are the destination that request and receive data, while the network is the roots that the data travels on
- **Internet Protocol (IP) (Internet Layer)** is a protocol that is used to send and receive web data. They assign IP Addresses, and they are responsible for delivering IP Packets to the IP Addresses.
- The IP uses version 4 or version 6 which is widely used in the internet protocol. They are separated by periods or dots on version 4 and contains four octet for example: 192.0.2.235, and version 6 has eight groups of hexadecimal digits separated by colons for example: 2b5b:1e49:8d01:c2ac:fffd:833e:dfee:13a4
- When you send data across a network (internet), you send it as a **IP Packets or datagrams**. **IP Packets** contain a header and the data. IP Packets contain the destination IP address and the Source IP address, just like mail has the sender and source address. These addresses are located in the IP Packet's header.
- IP Packets can be **damaged/corrupted, arrive out of order, or dropped/lost in transit**. The data part of the IP Packet includes protocols that help with those issues. These protocols are part of the **transport layer** :

  - **Transmission Control Protocol - TCP (Transport Layer)**- ensures that data is sent in order, not damaged, and that it arrives at the destination. This is at the cost of speed however. This protocol is best used for text or image files
  - **User Datagram Protocol - UDP** - ensures that data won't be damaged/corrupted, but it cant guarantee it wont be lost or out of order. This protocol is used for data that tolerate some data loss, like voice calls or live video streaming.
  - These protocols contain payload data that further contain further protocols inside of them.
  - Its important to note __HTTP requests cannot use UDP__, as the protocol DEPENDS ON GUARANTEED DELIVERY. Sending api requests will automatically __use TCP under the hood__ (HTTP will pick it for you regardless). 
  - UDP is used in apps that implement their own data-handling logic, like video streaming or multiplayer games (often using WebRTC or custom UDP protocols).
  ### Protocol Stack / Flow / Hierarchy:

  **Wi-Fi ➡ IP ➡ TCP ➡ HTTP ➡ Your backend code** (e.g., Express handles it)  
  This means our HTTP request is wrapped in a TCP packet, which is wrapped in an IP packet, then sent over the Wi-Fi network.

  | Layer          | Purpose                                       |
  | -------------- | --------------------------------------------- |
  | HTTP           | API request format                            |
  | TCP            | Reliable communication                        |
  | IP             | Routing packets across networks               |
  | Ethernet/Wi-Fi | Physical transmission over cables or wireless |

## HTTP and HTTPS
