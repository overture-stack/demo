FROM nginx

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install git -y
RUN apt-get install curl -y
RUN apt-get install sudo -y
RUN curl -sL https://deb.nodesource.com/setup_10.x | sudo -E bash - && apt-get install nodejs -y

# bootstraps arranger dependencies 
RUN git clone https://github.com/overture-stack/arranger.git
RUN cd arranger && npm i && npm run bootstrap  

# builds admin ui and storybook
RUN cd arranger/modules/admin-ui && REACT_APP_ARRANGER_ADMIN_ROOT=/admin/graphql npm run build
RUN cd arranger/modules/components && STORYBOOK_ARRANGER_API=/ npm run build-storybook

# copies build-bundles out
RUN cp -r arranger/modules/admin-ui/build ./arranger-admin
RUN cp -r arranger/modules/components/storybook-static ./arranger-storybook

COPY nginx.conf /etc/nginx/nginx.conf

CMD nginx -g "daemon off;"
# CMD [ "nginx", "nginx -g daemon off" ]