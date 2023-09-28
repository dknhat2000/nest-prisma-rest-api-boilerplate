FROM node:18
WORKDIR /backend
COPY ./ ./
RUN npm install --legacy-peer-deps
RUN npm run build
CMD npx prisma migrate deploy && npm run start