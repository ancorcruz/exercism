var Pangram = function(sentence) {

  this.sentence = sentence;
  this.alphabet = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm',
    'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'
  ];

};

Pangram.prototype.isPangram = function() {

  var sentence = this.sentence.toLowerCase();

  return this.alphabet.every(function(character) {
    return sentence.includes(character);
  });

}

module.exports = Pangram;
