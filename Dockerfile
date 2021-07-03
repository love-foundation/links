FROM node:16 as builder

WORKDIR /app

ADD ./package* ./
RUN npm ci

ADD / ./
RUN npm run build

# Actual image
FROM cupcakearmy/static
COPY  --from=builder /app/build /srv