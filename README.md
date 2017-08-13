# OmniAuth Beddit

OmniAuth strategy for the [Beddit Pro API](https://docs.google.com/document/d/1D-JULr_zu_B80wFnNgyNjPNPTZXquqm6cqwyRcDUHas/pub) v2 using the OAuth 2.0 protocol.

## Prerequisites

The `omniauth-beddit` gem is dependent on the following gems. These are defined in `omniauth-beddit.gempsec` as runtime dependencies.

- [Omniauth 1.6.1](https://github.com/omniauth/omniauth) (Multi-Provider Authentication Framework)
- [Omniauth OAuth 2 1.4.0](https://github.com/intridea/omniauth-oauth2) (Omniauth OAuth 2 Strategy)

## Installation

Add the strategy to your application's `Gemfile` with the following lines.
    
    # Use Omniauth for multi-provider authentication
    gem 'omniauth'
    # Use Omniauth-OAuth2 Omniauth strategy
    gem 'omniauth-oauth2'
    # Use Omniauth-Beddit Omniauth strategy
    gem 'omniauth-beddit'

Run `bundle install` from the command line (i.e. Terminal or Command Prompt).

    $ bundle install

Alternatively, you may choose to install the gems manually by running the following commands from the command line (i.e. Terminal or Command Prompt).

    $ gem install omniauth
    $ gem install omniauth-oauth2
    $ gem install omniauth-beddit

## Usage


```ruby
gem 'omniauth'
gem 'omniauth-oauth2'
gem 'omniauth-beddit'
```

If using Rails, define the stategy in it's middleware by creating an `omniauth.rb` file in the 'config/initializers' directory and adding the following line.

```ruby
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :beddit, ENV['BEDDIT_API_KEY'], ENV['BEDDIT_API_SECRET']
end
```

If using another framework, consult it's documentation to define the strategy it it's middleware and then add the following line.

```ruby
use OmniAuth::Builder do
  provider :beddit, ENV['BEDDIT_API_KEY'], ENV['BEDDIT_API_SECRET']
end
```

## Contributing

Feel free to fork and patch this project. Contributions are not only welcome but invited!

## License

[MIT](https://github.com/randalhumphries/omniauth-beddit/blob/master/LICENSE)