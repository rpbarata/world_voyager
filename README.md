# WorldVoyager

Simple list of countries and cities around the world.

It uses [simplemaps](https://simplemaps.com/) database to provide a list of countries districts and cities around the world to use in your application.

## Installation

Just install the `world_voyager` gem

```sh
gem install world_voyager
```

or if you use bundler put this in your `Gemfile`

```ruby
gem 'world_voyager'
```

## Usage

### List all countries of the world

```ruby
WorldVoyager.countries
# => ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", ...]
```

### List all districts of specific country

```ruby
WorldVoyager.districts("Portugal")
# => ["Aveiro", "Azores", "Beja", "Braga", "Bragança", ...]
```

### List all cities of specific district

```ruby
WorldVoyager.cities("Coimbra")
# => ["Arganil", "Cantanhede", "Coimbra", "Condeixa-a-Nova", "Eiras", ...]
```

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT). Also, it uses [simplemaps](https://simplemaps.com/) open source database.
