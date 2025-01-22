FROM quay.io/jupyter/datascience-notebook

USER root

# Create necessary directories
RUN mkdir -p /root/notebooks /root/data /root/src

# Change permissions to allow jupyter user to access these directories
RUN chown -R jovyan:users /root

# Switch back to jupyter user (jovyan)
USER jovyan

# Set the working directory
WORKDIR /root

# Copy any existing source files
COPY src/ /root/src/

# Expose the jupyter port
EXPOSE 8888
