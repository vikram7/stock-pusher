require 'uri'
require 'net/https'
require 'json'
require 'firebase'
require_relative 'tradier_api'


# securities = %w[aapl googl msft crm vmw]

# securities.each do |security|
#   start = Time.now
#   hash = Hash.new
#   stock_data = TradierApi.new(security)
#   hash =
#     {
#       :symbol => stock_data.symbol,
#       :price => stock_data.price,
#       :volume => stock_data.volume,
#       :timestamp => stock_data.timestamp
#     }

#   base_uri = 'https://stock-indicator.firebaseio.com/'
#   firebase = Firebase::Client.new(base_uri)
#   puts "======="
#   puts Time.now - start
#   response = firebase.push("stocks", hash)
#   puts Time.now - start
#   puts "======="
# end

# base_uri = 'https://dazzling-fire-7751.firebaseio.com/'
# firebase = Firebase::Client.new(base_uri)

# price = 510.455
# while true
#   hash = Hash.new
#   hash =
#   {
#     :symbol => "GOOGL",
#     :price => price,
#     :timestamp => Time.now.to_i
#   }
#   a = rand(-1..1)
#   price *= (1 + a*(0.0005))
#   puts price
#   response = firebase.push("stocks", hash)
# end

uri = URI.parse("https://sandbox.tradier.com/v1/markets/history?symbol=AAPL&start=2014-01-01")
http = Net::HTTP.new(uri.host, uri.port)
http.read_timeout = 30
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_PEER
request = Net::HTTP::Get.new(uri.request_uri)
request["Accept"] = "application/json"
request["Authorization"] = "Bearer " + ENV["TOKEN"]
underlying_data = http.request(request)
parsed_underlying_data = JSON.parse(underlying_data.body)


# write new methods to recreate hash you want
