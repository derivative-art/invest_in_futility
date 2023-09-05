FROM ghcr.io/actions/jekyll-build-pages:v1.0.8

COPY . /app/
WORKDIR /app
RUN gem install bundler \
  && bundle install