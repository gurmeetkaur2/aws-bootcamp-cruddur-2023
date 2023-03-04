# build stage
FROM node:16.18 as builder
WORKDIR /frontend-react-js
COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:alpine
WORKDIR /frontend-react-js
COPY --from=builder /frontend-react-js/build ./build

ENV PORT=3000
EXPOSE ${PORT}

# Healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD wget -qO- http://localhost:$PORT/ || exit 1

CMD ["npm", "start"]