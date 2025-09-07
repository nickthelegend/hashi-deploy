FROM hashicorp/vault:1.17
COPY config.hcl /vault/config/config.hcl
ENV SKIP_CHOWN=true \
    SKIP_SETCAP=true

# FROM hashicorp/vault
RUN setcap cap_ipc_lock=+ep /bin/vault
RUN apt-get update && apt-get install -y gosu
ENTRYPOINT ["gosu", "vault", "vault", "server", "-config=/vault/config/config.hcl"]
