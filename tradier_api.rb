class TradierApi
  attr_accessor :symbol, :price, :volume, :timestamp
  def initialize(underlying)
    uri = URI.parse("https://sandbox.tradier.com/v1/markets/quotes?symbols=#{underlying}")
    http = Net::HTTP.new(uri.host, uri.port)
    http.read_timeout = 30
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_PEER
    request = Net::HTTP::Get.new(uri.request_uri)
    # Headers
    request["Accept"] = "application/json"
    request["Authorization"] = "Bearer " + ENV["TOKEN"]
    # Send synchronously
    underlying_data = http.request(request)
    parsed_underlying_data = JSON.parse(underlying_data.body)
    underlying_data = parsed_underlying_data["quotes"]["quote"]
    @symbol = underlying_data["symbol"]
    @price = underlying_data["last"]
    @volume = underlying_data["last_volume"]
    @timestamp = underlying_data["trade_date"]
  end
end
