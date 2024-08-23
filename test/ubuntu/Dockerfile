# Use the official Ubuntu 22.04 image as the base image
FROM ubuntu:22.04

# Install updates and OpenSSH server
RUN apt-get update && \
    apt-get install -y openssh-server telnet net-tools vim && \
    # Clean up the apt cache to reduce the image size
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Create the necessary directory for SSH
RUN mkdir /var/run/sshd

# Set the root password (change this to a more secure password in a production environment)
RUN echo 'root:root' | chpasswd

# Allow SSH root login (for testing purposes; adjust this as needed for your security policies)
RUN sed -i 's/^#PermitRootLogin prohibit-password/PermitRootLogin yes/' /etc/ssh/sshd_config

# Expose port 22
EXPOSE 22

# Start the OpenSSH server
CMD server ssh start