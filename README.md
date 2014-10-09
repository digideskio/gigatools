# Gigatools

Gigatools is a gem for easily grabbing a Gigatools user's information and a event list without need for an API key.

## Installation

Add this line to your application's Gemfile:

    gem 'gigatools'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install gigatools

## Usage

You can retrieve an object containing the user's information and event list by running:

    Gigatools.find_by_username("GIGATOOLS_USERNAME")

## Contributing

1. Fork it ( https://github.com/imjoeco/gigatools/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
