module BookKeeping
  VERSION = 4
end

# class with one class method which print le DNA complement of a DNA strand
class Complement
  def self.of_dna(strand)
    return '' if strand =~ /[^ATCG]/

    strand.tr('ATCG', 'UAGC')
  end
end
