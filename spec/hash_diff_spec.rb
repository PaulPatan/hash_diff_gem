# frozen_string_literal: true

require_relative 'spec_helper'

RSpec.describe HashDiff do
  using HashDiffRefinement
  describe '.diff' do
    it 'returns differences between two hashes' do
      hash1 = { a: 1, b: 2, c: 3 }
      hash2 = { c: 3 }
      expected = { a: 1, b: 2 }

      expect(hash1.my_diff(hash2)).to eq(expected)
    end

    it 'returns empty hash when hashes are identical' do
      hash1 = { a: 1, b: 2 }
      hash2 = { a: 1, b: 2 }

      expect(hash1.my_diff(hash2)).to eq({})
    end

    it 'returns entire first hash when second hash is empty' do
      hash1 = { a: 1, b: 2 }
      hash2 = {}

      expect(hash1.my_diff(hash2)).to eq(hash1)
    end

    it 'returns empty hash when first hash is empty' do
      hash1 = {}
      hash2 = { a: 1 }

      expect(hash1.my_diff(hash2)).to eq({})
    end

    it 'returns differences for keys with different values' do
      hash1 = { a: 1, b: 2 }
      hash2 = { a: 2, b: 3 }

      expect(hash1.my_diff(hash2)).to eq(hash1)
    end

    it 'handles partial overlap correctly' do
      hash1 = { a: 1, b: 2, c: 3, d: 4 }
      hash2 = { b: 2, d: 5 }
      expected = { a: 1, c: 3, d: 4 }

      expect(hash1.my_diff(hash2)).to eq(expected)
    end
  end
end
