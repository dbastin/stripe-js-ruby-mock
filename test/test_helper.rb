require 'capybara/rails'
require 'capybara/poltergeist'
require 'js_driver'

require 'stubs/fake_stripe'
server = FakeStripe.boot
Stripe.api_base = "http://"+[server.host, server.port].join(':')

Capybara.default_wait_time = 15

class ActionDispatch::IntegrationTest
  include Capybara::DSL
end
