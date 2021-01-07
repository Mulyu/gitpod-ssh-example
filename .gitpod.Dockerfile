FROM gitpod/workspace-full

USER gitpod

# Install Dropbear SSH server
RUN DEBIAN_FRONTEND=noninteractive sudo apt-get install -yq \
        dropbear \
    && sudo apt-get clean && sudo rm -rf /var/lib/apt/lists/* /tmp/*

# Install Chisel
RUN curl https://i.jpillora.com/chisel! | bash
