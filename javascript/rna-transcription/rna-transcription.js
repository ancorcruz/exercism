var dnaTranscriber = function() {};

dnaTranscriber.prototype.toRna = function(dna_strand) {
  var transcriptions = {
    'C': 'G',
    'G': 'C',
    'A': 'U',
    'T': 'A',
  };

  return dna_strand.replace(/[CGAT]/g, function(nucleotide) {
    return transcriptions[nucleotide];
  });
}

module.exports = dnaTranscriber;
