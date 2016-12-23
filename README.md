# TimeSpent

Calculate the time spent between several markings


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'time_spent'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install time_spent

## Usage


Ex.: `['8:00', '9:00', '13:30', '15:45']`

Format suported : `H:M`

```irb
require 'time_spent'
=> true
TimeSpent::Markings.new.calculate(Time.now, ['8:00','9:00'])
=> "01:00"
duration = TimeSpent::Markings.new.calculate(Time.now, ['8:00','9:00'])
=> "01:00"
TimeSpent::Markings.new.to_sec duration
=> 3600


```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/andrelugomes/time_spent.
