# Ripe Stat for Ruby

This is a ruby client for the stat.ripe.net data service.

![test](https://github.com/fa11enangel/ripe-stat-rb/actions/workflows/test.yml/badge.svg)

## Usage

This is a simple API wrapper. If you understand the API and the data, you can
use and extend it for your needs.


### Create the client

```ruby
require "ripe-stat/client"

# Get a new instance to work on it
client = RipeStat::Client.new
```

### Whois Data

```ruby
require "ripe-stat/client"
client = RipeStat::Client.new
whois = client.whois("140.78.90.50")
p whois.country # AT
```

## Development

Check out the repository and run all tests to be sure they are working:

```sh
$ rake test
```

## License

(The MIT License)

Copyright © 2021 Konstantin Filtschew

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the 'Software'), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
