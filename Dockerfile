# Use the official Ubuntu image as the base image
FROM ubuntu:20.04

# Install necessary packages
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install ansible

# Copy the Ansible playbook and inventory files
COPY ansible /ansible
COPY inventory /inventory

# Set the working directory
WORKDIR /ansible

# Run the Ansible playbook
CMD ["ansible-playbook", "-i", "/inventory/hosts.ini", "site.yml"]
