# build stage
FROM node:16.18 as build
WORKDIR /frontend-react-js
COPY . /frontend-react-js
RUN npm install
COPY . .
RUN npm run build

# development stage
FROM build as development
WORKDIR /frontend-react-js
COPY --from=build /frontend-react-js/build /frontend-react-js/build
RUN npm install
RUN npm i

ENV PORT=3000
EXPOSE ${PORT}

# Healthcheck
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 \
    CMD curl --fail http://localhost:3000/ || exit 1
CMD ["npm", "start"]