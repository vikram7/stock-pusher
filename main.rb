require 'uri'
require 'net/https'
require 'json'
require 'firebase'
require_relative 'tradier_api'


securities = %w[aapl googl msft crm vmw]

securities.each do |security|
  start = Time.now
  hash = Hash.new
  stock_data = TradierApi.new(security)
  hash =
    {
      :symbol => stock_data.symbol,
      :price => stock_data.price,
      :volume => stock_data.volume,
      :timestamp => stock_data.timestamp
    }

  base_uri = 'https://stock-indicator.firebaseio.com/'
  firebase = Firebase::Client.new(base_uri)
  puts "======="
  puts Time.now - start
  response = firebase.push("stocks", hash)
  puts Time.now - start
  puts "======="
end
puts Time.now - start
