require 'sinatra/base'

class FakeStripe < Sinatra::Base

  def self.boot
    instance = new
    Capybara::Server.new(instance).tap { |server| server.boot }
  end

  get '/v1/tokens' do
    content_type :json
    callback = params[:callback]
    response = Stripe::Token.create(
      :card => {
        :number => params[:card][:number],
        :exp_month => params[:card][:exp_month],
        :exp_year => params[:card][:exp_year],
        :cvc => params[:card][:cvc]
      },
    ).to_json
    "#{callback}(200, #{response})"
  end
end
