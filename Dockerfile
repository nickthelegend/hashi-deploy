FROM hashicorp/vault:1.17
ENV SKIP_CHOWN=true \
    SKIP_SETCAP=true

# FROM hashicorp/vault
RUN setcap cap_ipc_lock=+ep /bin/vault