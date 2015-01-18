require 'uri'
require 'net/https'
require 'json'
require_relative 'tradier_api'

securities = %w[aapl googl msft crm vmw]

hash = Hash.new
array = Array.new
securities.each do |security|
  stock_data = TradierApi.new(security)
  hash =
    {
      "ticker" => stock_data.ticker,
      "last" => stock_data.last,
      "last_volume" => stock_data.last_volume,
      "timestamp" => stock_data.timestamp
    }
  array << hash
end
