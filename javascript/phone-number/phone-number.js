var PhoneNumber = function(raw_number) {

  this.raw_number = raw_number;
  this.sanitized_number = raw_number.replace(/[^\d]/g, '');

  this.valid = function() {

    var sanitized_number = this.sanitized_number;
    var length = sanitized_number.length;

    return (length === 10 || (length === 11 && sanitized_number.startsWith('1')));
  }

};

PhoneNumber.prototype = {

  number: function() {

    var sanitized_number = this.sanitized_number;

    if (!this.valid()) {
      return '0000000000';
    }

    return sanitized_number.substr(sanitized_number.length - 10, 10);

  },

  areaCode: function() {

    return this.number().substr(0, 3)

  },

  toString: function() {

    var number = this.number();
    var areaCode = this.areaCode();
    var exchange = number.substr(3, 3);
    var lineNumber = number.substr(6, 4);

    return '(' + areaCode + ') ' + exchange + '-' + lineNumber;
  },

};

module.exports = PhoneNumber;
