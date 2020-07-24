# getting base image
FROM ruby

WORKDIR /stock-picker
COPY . /stock-picker
CMD ["bin/main.rb"]
