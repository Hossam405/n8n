# Start from the official n8n Docker image (use your current version or 'latest')
FROM n8nio/n8n:latest

# --- NEW LINE: Define the environment variable in the Dockerfile ---
ENV NODE_FUNCTION_ALLOW_EXTERNAL=steamdb-js

# Switch to the root user to gain permission for global npm install
USER root

# Install the steamdb-js package globally
RUN npm install -g steamdb-js@1.0.8


# Switch back to the non-root user (important for security)
USER node