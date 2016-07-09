var Hamming = function() {};

Hamming.prototype.compute = function(strand_a, strand_b) {

  var count = 0;

  if (strand_a.length !== strand_b.length) {
    throw(new Error('DNA strands must be of equal length.'));
  }

  for (var i = 0; i < strand_a.length; i++) {
    if (strand_a[i] !== strand_b[i]) {
      count++
    }
  }

  return count;
}

module.exports = Hamming;
