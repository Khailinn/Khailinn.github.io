FROM ruby:3.1.3

RUN gem install jekyll bundler minima jekyll-feed


RUN mkdir /jekyll_files
RUN mkdir /jekyll_files/src
WORKDIR /jekyll_files/src
EXPOSE 4000


ENTRYPOINT ["bundle", "exec", "jekyll", "serve", "--host", "0.0.0.0", "--livereload"]