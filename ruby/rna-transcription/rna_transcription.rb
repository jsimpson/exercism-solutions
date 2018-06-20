module BookKeeping
  VERSION = 1
end

class Complement
  DNA_TO_RNA = {
    'G' => 'C',
    'C' => 'G',
    'T' => 'A',
    'A' => 'U'
  }

  class << self
    def of_dna(dna_strand)
      rna_strand = ""
      dna_strand.chars.map do |nucleotide|
        transcription = DNA_TO_RNA[nucleotide]
        return '' if transcription.nil?
        rna_strand << DNA_TO_RNA[nucleotide]
      end
      rna_strand
    end
  end
end
