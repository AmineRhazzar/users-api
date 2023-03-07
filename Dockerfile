FROM node:16-buster
WORKDIR /app
COPY . .
RUN yarn install --production=true
RUN npx prisma migrate deploy
RUN npx prisma generate
RUN yarn run build
EXPOSE 4000
CMD ["yarn", "start"]


