var Words = function() {};

Words.prototype.count = function(text) {
  var words = text.trim().split(/\s+/);
  var word_count = {};

  words.forEach(function(word) {
    if (typeof word_count[word] !== 'number') {
      word_count[word] = 0;
    }

    word_count[word] += 1;
  });

  return word_count;
};

module.exports = Words;
