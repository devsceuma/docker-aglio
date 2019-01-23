FROM node:10
RUN npm install -g pug@latest
RUN npm install -g pug-cli@latest
RUN npm install -g coffeescript@latest
RUN npm install -g constantinople@latest
RUN npm install -g jstransformer@latest
RUN npm install -g cryptiles@latest
RUN npm install -g boom@latest
RUN npm install -g hoek@latest
RUN npm install -g minimatch@latest
RUN npm install -g aglio@latest
ENTRYPOINT ["aglio"]
