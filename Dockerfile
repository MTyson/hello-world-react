FROM node:8 as react-build
WORKDIR /src
COPY . ./
RUN npm install
RUN npm build

FROM nginx:alpine
COPY /public /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]


