FROM jenkins/jenkins:lts

# Copy the plugin list into the image
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt

# Install plugins from the file
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
