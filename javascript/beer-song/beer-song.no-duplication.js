var BeerSong = function() {};

BeerSong.prototype = {

  verse: function(bottlesAmount) {

    var bottles = function(bottlesAmount) {
      switch(bottlesAmount) {
        case -1:
          return '99 bottles';
          break;

        case 0:
          return 'No more bottles';
          break;

        case 1:
          return '1 bottle';
          break;

        default:
          return bottlesAmount + ' bottles';
      }
    };

    var action = function(bottlesAmount) {

      var pronoun = function(bottlesAmount) {
        if (bottlesAmount === 1) {
          return 'it';
        }

        return 'one';
      };

      if (bottlesAmount === 0) {
        return 'Go to the store and buy some more, ';
      }

      return 'Take ' + pronoun(bottlesAmount) + ' down and pass it around, ';

    };

    return bottles(bottlesAmount) + ' of beer on the wall, ' +
           bottles(bottlesAmount).toLowerCase() + ' of beer.\n' +
           action(bottlesAmount) +
           bottles(bottlesAmount - 1).toLowerCase() + ' of beer on the wall.\n';
  },

  sing: function(start, end) {
    var verses = [];
    var verse_number = start;
    var last_verse = end || 0;

    while(verse_number >= last_verse) {
      verses.push(this.verse(verse_number));
      verse_number--;
    }

    return verses.join('\n');
  },

}

module.exports = BeerSong;
