# Randomuser

This gem returns simple JSON/hash responses from the [Random User Generator](http://RandomuserRu.me) API.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'randomuser-ru'
```

And then execute:

```bash
$ bundle
```

Or install it as a standalone gem with:

```bash
$ gem install randomuser-ru
```

## Usage

To request a single random user:

```ruby
RandomuserRu.generate
```

To request multiple random users:

```ruby
RandomuserRu.generate(5)
```

To request a single female random user:

```ruby
RandomuserRu.generate_female
```

To request multiple female random users:

```ruby
RandomuserRu.generate_female(5)
```

To request a single male random user:

```ruby
RandomuserRu.generate_male
```

To request multiple male random users:

```ruby
RandomuserRu.generate_male(5)
```

For more information on this API, please see the [Random Russian User Generator](http://Randomuser.ru) site.

## Tests

Testing works as usual:

```bash
git clone https://github.com/byteg/randomuser-ru.git
cd randomuser-ru
bundle install
rake
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
