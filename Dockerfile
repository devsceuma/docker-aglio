FROM node:10
RUN npm install -g aglio@latest
ENTRYPOINT ["aglio"]
