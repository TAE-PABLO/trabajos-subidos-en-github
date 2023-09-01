FROM ruby:3.2.1

# Set the working directory inside the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY . .

# Install the gems
RUN bundle install

# Copy the application code to the container
COPY . ./app

# Set the default command to run RSpec
CMD ["rspec"]