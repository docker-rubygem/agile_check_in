FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.0.3

RUN gem install agile_check_in --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["ci"]
CMD ["--help"]
