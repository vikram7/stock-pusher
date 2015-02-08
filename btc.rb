require 'uri'
require 'net/https'
require 'json'
require 'firebase'
require 'coinbase'

base_uri = ENV['FIREBASE_ADDRESS'].to_s
firebase = Firebase::Client.new(base_uri)
coinbase = Coinbase::Client.new(ENV['COINBASE_API_KEY'], ENV['COINBASE_API_SECRET'])

while true
  price = coinbase.spot_price.format
  hash = Hash.new
  hash =
  {
    :price => price,
    :timestamp => Time.now.to_i
  }
  response = firebase.push("btcusd", hash)
end
