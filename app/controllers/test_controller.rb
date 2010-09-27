require 'Net/HTTp'
require 'URI'
class TestController < ApplicationController
  def index
    puts "teststsatasdsdf"
    res = Net::HTTP.post_form(URI.parse('http://localhost:8081/servlet/PayPalNotifyServlet'),
                              {'item_number'=>'AddFund-R-123-123', 'max'=>'50'})
    @response_body = "#{res.body}"
  end
end
