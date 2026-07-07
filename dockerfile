FROM nginx:alpine

# Install envsubst tool for variable swapping
RUN apk add --no-cache gettext

# Copy our template file into a temporary directory
COPY index.html /etc/nginx/templates/index.html.template

# Set a default value for our variable just in case
ENV HOTEL_NAME="The Default Grand Resort"

# Nginx alpine images automatically run envsubst on files in the templates directory before starting up!
CMD ["nginx", "-g", "daemon off;"]
