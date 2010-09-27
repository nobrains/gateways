require 'Net/HTTp'
require 'URI'

class PaypalController < ApplicationController
  
  def index
    @successurl="#{params['return']}"
    @pendingurl="#"
    @failureurl="#{params['cancel_return']}"
    @cancelurlurl="#"
    @notifyurl = "#{params['notify_url']}"
    if request.post?
      puts "inside post"
      ipn = { "business=" => params['business'] , 
              "payer_business" => "Dummy Networds" ,
              "verify_sign" => "SomeVerify_sign" , 
              "payer_id" => "WPCW8HKEM4VKW" , 
              "payment_date" => "19:12:22 Jun 28, 2008 PDT" , 
              "payment_gross" => params['amount'] , 
              "quantity" => "1" , 
              "receiver_email" => params['business'] , 
              "payment_status" => "Completed" , 
              "payment_fee" => "0.65" , 
              "txn_id" => "70372727PB182615N" , 
              "charset" => "UTF-8" , 
              "payment_type" => "instant" , 
              "last_name" => params['last_name'] , 
              "mc_currency" => "USD" , 
              "mc_gross" => params['amount'] , 
              "payer_status" => "verified" , 
              "residence_country" => "DE" , 
              "mc_fee" => "0.65" , 
              "notify_version" => "2.4" , 
              "tax" => "0.00" , 
              "receiver_id" => "8L85BDDCTWUTJ" , 
              "shipping" => "0.00" , 
              "txn_type" => "web_accept" , 
              "custom" => "null" , 
              "payer_email" => "test@dummynetworks.com" , 
              "item_number" => params['item_number'] , 
              "first_name" => params['first_name'] ,   
              "item_name" => params['item_number']  
            }
        puts ipn, @notifyurl
        url = URI.parse(@notifyurl)
        Net::HTTP.post_form(url, ipn)
        redirect_to @successurl
      end
      
    #  redirect_to @successurl   
  end
  
  def verify
    @verified="VERIFIED"    
  end
  
end
