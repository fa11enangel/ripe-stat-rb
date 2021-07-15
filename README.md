# Ripe Stat for Ruby

This is a ruby client for the stat.ripe.net data service.

## Usage

This is a simple API wrapper. If you understand the API and the data, you can
use and extend it for your needs.


### Create the client

```ruby
require 'ripe-stat/client'

# Get a new instance to work on it
client = RipeStat::Client.new
```

## Development

Check out the repository and run all tests to be sure they are working:

```sh
$ ruby -Ilib test/*_test.rb
```
