var BeerSong = function() {};

BeerSong.prototype = {

  verse: function(bottles) {
    switch(bottles) {
      case 0:
        return 'No more bottles of beer on the wall, ' +
                'no more bottles of beer.\n' +
                'Go to the store and buy some more, '+
                '99 bottles of beer on the wall.\n';
        break;

      case 1:
        return '1 bottle of beer on the wall, ' +
               '1 bottle of beer.\n' +
               'Take it down and pass it around, ' +
               'no more bottles of beer on the wall.\n';
        break;

      case 2:
        return '2 bottles of beer on the wall, ' +
               '2 bottles of beer.\n' +
               'Take one down and pass it around, ' +
               '1 bottle of beer on the wall.\n';
        break;

      default:
        return bottles + ' bottles of beer on the wall, ' +
               bottles + ' bottles of beer.\n' +
               'Take one down and pass it around, ' +
               (bottles - 1) + ' bottles of beer on the wall.\n';
    }
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
