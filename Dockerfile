FROM ruby:3.1.2

RUN apt-get update

WORKDIR /src/

COPY Gemfile* /src/

RUN gem install bundler

RUN bundle install

COPY . /src/

CMD ["bin/rails", "s", "-b", "0.0.0.0"]
