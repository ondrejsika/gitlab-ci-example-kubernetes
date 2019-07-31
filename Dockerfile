FROM node as build
WORKDIR /build
COPY yarn.lock .
COPY package.json .
RUN yarn
COPY . .
RUN yarn run static

FROM nginx
COPY --from=build /build/out /usr/share/nginx/html
