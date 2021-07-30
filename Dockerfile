FROM node:14
RUN curl -sSL https://rover.apollo.dev/nix/latest | sh
COPY package.json ./
COPY yarn.lock ./
COPY index.js ./
RUN yarn install --frozen-lockfile --ignore-scripts
CMD ["node", "index.js"]