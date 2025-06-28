# Start from a basic Ubuntu image
FROM ubuntu:22.04

# Disable interactive prompts during package installation
ENV DEBIAN_FRONTEND=noninteractive

# Update and install tools
RUN apt-get update && \
    apt-get install -y curl gnupg2 ca-certificates software-properties-common

# Install OpenJDK
RUN apt-get install -y openjdk-11-jdk

# Install Python
RUN apt-get install -y python3 python3-pip

# Install Node.js (via NodeSource)
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Clean up
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Default command
CMD ["bash"]
