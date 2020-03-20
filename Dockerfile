FROM node:carbon

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Set environment variables to localhost
ENV MONGO_HOST "host.docker.internal"

# Expose port and start application
EXPOSE 3000
CMD [ "npm", "start" ]
