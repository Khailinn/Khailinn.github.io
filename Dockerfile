FROM ruby:3.1.3

RUN gem install jekyll bundler minima jekyll-feed


COPY src /jekyll_files/src
WORKDIR /jekyll_files/src
EXPOSE 4000


ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0"]