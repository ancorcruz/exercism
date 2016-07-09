var Gigasecond = function(inputDate) {
  this.inputDate = inputDate;
  this.gigasecond = Math.pow(10, 12);
};

Gigasecond.prototype.date = function() {
  return new Date(this.inputDate.getTime() + this.gigasecond);
}

module.exports = Gigasecond;
