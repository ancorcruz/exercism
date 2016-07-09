var Year = function(year) {
  this.year = year;

  this.divisibleBy = function(divisor) {
    return year % divisor === 0;
  }
};

Year.prototype.isLeap = function() {
  return this.divisibleBy(4) && (!this.divisibleBy(100) || this.divisibleBy(400));
}

module.exports = Year;
