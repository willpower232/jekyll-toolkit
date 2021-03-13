FROM ruby:2.7-alpine

LABEL org.opencontainers.image.source=https://github.com/willpower232/jekyll-toolkit

RUN apk add --no-cache build-base gcc bash cmake git

# install both bundler 1.x and 2.x
RUN gem install bundler -v "~>1.0" && gem install bundler jekyll

EXPOSE 80

WORKDIR /site

# entrypoint is always run when starting the container
# if there are any dependencies requested then install them
COPY docker-entrypoint.sh /usr/local/bin/
RUN chmod +x /usr/local/bin/docker-entrypoint.sh
ENTRYPOINT [ "docker-entrypoint.sh" ]

CMD [ "bundle", "exec", "jekyll", "serve", "--force_polling", "-H", "0.0.0.0", "-P", "80" ]
