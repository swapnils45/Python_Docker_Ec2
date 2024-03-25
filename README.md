Create a Basic Python Web Server:
You can use Python's built-in http.server module to create a basic web server. Create a Python file named server.py with the following content:

Code ->>>>> copy from server.py file


This script creates a basic HTTP server that responds with "Hello, World!" to any GET request.

Create a Docker Container:
Create a Dockerfile in the same directory as server.py with the following content:

Code->>>>> Copy from Docker File

This Dockerfile specifies a Python 3.9 image as the base image, sets the working directory to /app, copies server.py into the container, and then runs python server.py as the default command.

Host on EC2 Server:
First, ensure you have Docker installed on your EC2 instance. If not, you can install Docker by following the official Docker documentation.
Once Docker is installed, copy your Dockerfile and server.py to your EC2 instance. You can use scp or any other file transfer method you prefer.
Build the Docker image by running the following command in the directory containing your Dockerfile and server.py:
bash
Copy code
docker build -t python-web-server .   Or sudo docker build -t python-web-server . ( use sudo to run it will run as root user)
This command will build the Docker image with the tag python-web-server.

After building the image, you can run the container with the following command:
bash

docker run -d -p 8000:8000 python-web-server or sudo docker run -d -p 8000:8000 python-web-server
This command runs the Docker container in detached mode (-d) and maps port 8000 of the container to port 8000 of the EC2 instance.

Finally, you can access your Python web server by navigating to your EC2 instance's public IP address followed by port 8000 in your web browser, e.g., http://your-ec2-public-ip:8000.
And make sure to edit your inbound rules to tcp - port 8000, custom , 0/00/00, Or allow All traffic. And than copy your public IP:8000.
That's it! You now have a basic Python web server running in a Docker container hosted on an EC2 instance.
