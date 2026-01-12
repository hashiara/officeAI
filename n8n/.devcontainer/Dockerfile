FROM n8nio/base:22

RUN apk add --no-cache --update openssh sudo shadow bash
RUN echo node ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/node && chmod 0440 /etc/sudoers.d/node
RUN mkdir /workspaces && chown node:node /workspaces
RUN npm install -g pnpm
RUN npm install -g n8n

USER node
WORKDIR /home/node

# mysql2をローカルインストール（共有DB接続用）
RUN npm install mysql2

RUN mkdir -p ~/.pnpm-store && pnpm config set store-dir ~/.pnpm-store --global
