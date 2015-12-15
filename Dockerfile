# DOCKER BlueMix Webinar Reactive

# retrive the node docker image
FROM registry.ng.bluemix.net/ibmnode:latest

# retrieve the app source code
RUN git clone https://github.com/ssbanchi/webinarreactive.git

WORKDIR webinarreactive

RUN npm install

# expose port
EXPOSE 8080

#launch the app
CMD ["node", "app.js"]
