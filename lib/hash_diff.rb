# frozen_string_literal: true

class HashDiff
  def self.diff(hash1, hash2)
    res = {}
    hash1.each do |key, value|
      res[key] = value if !hash2.key?(key) || hash2[key] != value
    end
    res
  end
end

module HashDiffRefinement
  refine Hash do
    def my_diff(other_hash)
      HashDiff.diff(self, other_hash)
    end
  end
end
