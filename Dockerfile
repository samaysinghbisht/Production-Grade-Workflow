FROM node:alpine as builder 
#assigning a reference to this container as builder

WORKDIR '/app'

COPY ./package.json ./

RUN npm install

COPY ./ ./

RUN npm run build

# deployment ready build will be inside the folder /app/build

FROM nginx

EXPOSE 80

COPY --from=builder /app/build /usr/share/nginx/html
# Using output from last container and copying only the files which are required for deployment into Nginx container's target directory
