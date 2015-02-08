
historicals = {
  "googl" =>  [
     {"date"=>"2014-01-02", "open"=>79.428571, "high"=>79.575714, "low"=>78.860143, "close"=>79.018571, "volume"=>58791957},
     {"date"=>"2014-01-03", "open"=>78.981429, "high"=>79.1, "low"=>77.204286, "close"=>77.282857, "volume"=>98303870},
     {"date"=>"2014-01-06", "open"=>76.778571, "high"=>78.114286, "low"=>76.228571, "close"=>77.704286, "volume"=>103359151}
     ],
  "aapl" =>  [
     {"date"=>"2014-01-02", "open"=>79.428571, "high"=>79.575714, "low"=>78.860143, "close"=>79.018571, "volume"=>58791957},
     {"date"=>"2014-01-03", "open"=>78.981429, "high"=>79.1, "low"=>77.204286, "close"=>77.282857, "volume"=>98303870},
     {"date"=>"2014-01-06", "open"=>76.778571, "high"=>78.114286, "low"=>76.228571, "close"=>77.704286, "volume"=>103359151}
     ]
}


indicator_computed_values = {
    "2014-01-02" => {
        "googl" => {
            "SMA 200 Day" => 83,
            "SMA 50 Day" => 75,
            "SMA 10 Day" => 79,
            "EMA 200 Day" => 82,
            "Bollinger -- Middle" => 78
        },
        "aapl" => {
            "SMA 200 Day" => 83,
            "SMA 50 Day" => 75,
            "SMA 10 Day" => 79,
            "EMA 200 Day" => 82,
            "Bollinger -- Middle" => 78
        }
    },
    "2014-01-03" => {
        "googl" => {
            "SMA 200 Day" => 83,
            "SMA 50 Day" => 75,
            "SMA 10 Day" => 79,
            "EMA 200 Day" => 82,
            "Bollinger -- Middle" => 78
        },
        "aapl" => {
            "SMA 200 Day" => 83,
            "SMA 50 Day" => 75,
            "SMA 10 Day" => 79,
            "EMA 200 Day" => 82,
            "Bollinger -- Middle" => 78
        }
    }
}
