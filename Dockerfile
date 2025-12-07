# Use the official n8n image as the base
FROM n8nio/n8n:latest

# Switch to root to install packages
USER root

# Install steamdb-js globally
RUN npm install -g steamdb-js

# Switch back to the default 'node' user
USER node
