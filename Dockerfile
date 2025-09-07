FROM hashicorp/vault:1.17
COPY config.hcl /vault/config/config.hcl
ENV SKIP_CHOWN=true \
    SKIP_SETCAP=true

# FROM hashicorp/vault
RUN setcap cap_ipc_lock=+ep /bin/vault
RUN setcap -r /usr/bin/vault

