var Anagram = function(word) {
  this.word = word.toLowerCase();
};

Anagram.prototype = {

  matches: function() {
    var args = (Array.isArray(arguments[0]) ? arguments[0] : Array.apply(null, arguments));
    var that = this;

    return args.filter(function(anagram) {
      return that.match(anagram);
    });
  },

  match: function(anagram) {
    var word = this.word;
    var anagram = anagram.toLowerCase();
    var word_chars = word.split('').sort();

    if (anagram.length !== word.length || anagram === word) {
      return false
    }

    return anagram.split('').sort().every(function(c, i) {
      return c === word_chars[i];
    });
  },

};

module.exports = Anagram;
