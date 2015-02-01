array = [11, 12, 13, 14, 15, 16, 17]

function simple_moving_averager(period) {
    var nums = [];
    return function(num) {
        nums.push(num);
        if (nums.length > period)
            nums.splice(0,1);  // remove the first element of the array
        var sum = 0;
        for (var i in nums)
            sum += nums[i];
        var n = period;
        if (nums.length < period)
            n = nums.length;
        return(sum/n);
    }
}

var sma3 = simple_moving_averager(3);
var sma5 = simple_moving_averager(5);
var data = [1,2,3,4,5,5,4,3,2,1];
for (var i in data) {
    var n = data[i];
    // using WSH
    console.log("Next number = " + n + ", SMA_3 = " + sma3(n) + ", SMA_5 = " + sma5(n));
}



array = [11, 12, 13, 14, 15, 16, 17]
3 day => [avg(11, 12, 13), avg(12, 13, 14), avg(14, 15, 16), avg (15, 16, 17)]

function SimpleMovingAverageDay(period) {
  for (var day in array.slice(0,period)){
    var price = array[day] * 2;
    console.log("SMA" + period + ": " + price);
  }
}


SimpleMovingAverageDay(3);

array.slice(n, n + 4)

