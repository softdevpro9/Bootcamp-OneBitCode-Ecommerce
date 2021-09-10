FROM nicolifelix/bootcamp:2.0


ENV app /var/ecommerce

RUN mkdir $app
WORKDIR $app

ADD Gemfile $app/Gemfile
ADD Gemfile.lock $app/Gemfile.lock

ENV BUNDLE_PATH /box_gem

ADD . $app