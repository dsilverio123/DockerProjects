<h1>Docker Projects</h1>

<h2>Platform and Technologies</h2>
<ul>
    <li>Cloud Platform: AWS</li>
    <li>Service: EC2 Instance</li>
    <li>Containerization: Docker</li>
    <li>OS: Ubuntu</li>
</ul>

<h3>Firewall Settings</h3>
<p>Remember to always ensure your security groups are correctly configured, especially when deploying web-based applications. For the first project, allowing traffic on port 80 is vital:</p>

<h4>Inbound Rules:</h4>
<ul>
    <li>HTTP (Port 80)</li>
    <li>Custom TCP (Port 19999)</li>
    <li>SSH (Port 22)</li>
</ul>
<p><em>Note: Always ensure that your firewall or security groups are configured according to the needs of your application and the best security practices.</em></p>

<hr>

<h3>1. Dockerized "Hello World!" Page</h3>
<a href="https://github.com/dsilverio123/BeyondMD123/tree/main/home">View the Project in the Home Directory</a>

<h4>Description</h4>
<p>A simple page built with HTML that displays "Hello World!". This web page is dockerized to ensure easy deployment and consistent runtime environment.</p>

<h4>Dependencies</h4>
<pre><code>
Docker: sudo apt install docker.io
Docker Compose: sudo apt install docker-compose
</code></pre>


<h4>Launch</h4>
<pre><code>
sudo usermod -aG docker ubuntu
# log out, log back in
sudo docker build -t your_image_name .
sudo docker-compose up -d
# Find on host website 
</code></pre>


<hr>

<h3>2. System Health Reporting Script for Debian</h3>
<a href="https://github.com/dsilverio123/BeyondMD123/tree/main/systemhealth123">View the System Health Project</a>

<h4>Description</h4>
<p>In this directory, you will find two essential components:</p>
<ul>
    <li>A Docker configuration for running the Netdata monitoring service.</li>
    <li>A Bash script (monitor.sh) that collects and reports various system health metrics, such as CPU usage, memory consumption, disk utilization, active user count, and running processes.</li>
</ul>

<h4>Dependencies</h4>
<pre><code>
sysstat: sudo apt install sysstat
net-tools: sudo apt install net-tools
docker-compose: sudo apt install docker-compose
</code></pre>

<h4>Launch</h4>
<pre><code>
# This launches the Netdata monitoring service
sudo docker-compose up -d
# This launches the script that outputs key system information
chmod +x monitor.sh
./monitor.sh
# Access the Netdata dashboard at URL: http://localhost:19999
</code></pre>
This updated content clarifies the two components present in the directory.


<p><strong>Additional Information:</strong> The hostname in <code>/BeyondMD123/systemhealth123$</code> docker-compose.yml has to be changed to the appropriate host.</p>

<hr>

<h3>3. Ansible Playbook for Docker on Debian Bookworm</h3>
<a href="https://github.com/dsilverio123/BeyondMD123/tree/main/ansible-debian-docker">View the Ansible Playbook Project</a>

<h4>Description</h4>
<p>An idempotent Ansible playbook designed for Debian Bookworm systems. This playbook automates the installation and configuration of Docker, ensuring it's executed without unnecessary changes to the system state.</p>

<h4>Dependencies</h4>
<pre><code>
Docker Compose: sudo apt install docker-compose
Ansible: sudo apt install ansible
</code></pre>

<h4>Launch</h4>
<pre><code>
ansible-playbook -i hosts.ini install_docker.yml
</code></pre>
