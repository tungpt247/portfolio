
### Configuration Acceptance testing with Cucumber + CapyBara + Poltergeist
========
```
Poltergeist is a headless Capybara driver which uses popular library called 'PhantomJS'.
We can run scenarios heedlessly using PhantomJS. You need install install PhnatomJS to use Poltergeist.
```

1. Update phantomjs

	$ brew update && brew install phantomjs

2. add poltergeist into Gemfile:

```
  gem "capybara"
  gem "cucumber"
  gem "rspec", :require => "spec"
  gem "poltergeist"
  gem "selenium-webdriver"
```
3.Let’s create ‘env.rb’ file to configure and register Poltergeist driver.

```
require "Capybara"
require "Capybara/cucumber"
require "rspec"
require 'capybara/poltergeist'

Capybara.default_driver = :poltergeist
Capybara.register_driver :poltergeist do |app|
    options = {
        :js_errors => true,
        :timeout => 120,
        :debug => false,
        :phantomjs_options => ['--load-images=no', '--disk-cache=false'],
        :inspector => true,
    }
    Capybara::Poltergeist::Driver.new(app, options)
end
```

Now, if you execute command

	run just cucumber
	$ bundle exec cucumber features/

	run just rspec
	$ bundle exec rspec spec/

	to monitoring test running
	$ bundle exec guard
  $ bundle exec rake

===

Rerefences:

https://github.com/guard/guard-cucumber
http://devblog.avdi.org/2012/08/31/configuring-database_cleaner-with-rails-rspec-capybara-and-selenium/
http://www.railsonmaui.com/blog/2013/08/06/migrating-from-capybara-webkit-to-poltergeist-phantomjs/
http://shashikantjagtap.net/cucumber-capybara-poltergeist-rockstar-bdd-combo/
