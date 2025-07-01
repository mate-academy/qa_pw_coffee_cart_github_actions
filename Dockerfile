FROM node:22-slim

WORKDIR /

COPY package.json package-lock.json ./
RUN npm ci
RUN npx playwright install --with-deps chromium

COPY . .

CMD ["npm", "run", "test-staging"]
