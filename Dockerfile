FROM node:16-buster
WORKDIR /app
COPY . .
RUN yarn
RUN npx prisma migrate dev --name='created user table'
RUN npx prisma migrate deploy
RUN npx prisma generate
RUN yarn run build
EXPOSE 4000
EXPOSE 5555
CMD ["yarn", "start"]


