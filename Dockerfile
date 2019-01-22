FROM roberto87/maven-node

# Install gcloud
RUN curl https://dl.google.com/dl/cloudsdk/channels/rapid/google-cloud-sdk.tar.gz > /tmp/google-cloud-sdk.tar.gz
RUN mkdir -p /usr/local/gcloud \
  && tar -C /usr/local/gcloud -xvf /tmp/google-cloud-sdk.tar.gz \
  && /usr/local/gcloud/google-cloud-sdk/install.sh --quiet
ENV PATH $PATH:/usr/local/gcloud/google-cloud-sdk/bin

# Install app-engine-java
RUN gcloud components install app-engine-java
