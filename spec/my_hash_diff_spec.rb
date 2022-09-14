require 'my_hash_diff'

using SebastianHash

describe SebastianHash do 
  describe "#my_diff" do   
    [
      {hash1: {a: 1, b: 2, c: 3}, 
        hash2: {c: 3},
        expected_hash: {a: 1, b: 2}},
      {hash1: {a: 1, b: 2, c: 3},
        hash2: {c: 2},
        expected_hash: {a: 1, b: 2, c: 3}},
      {hash1: {a: 1, b: 2, c: 3},
        hash2: {b: 2, c: 3},
        expected_hash: {a: 1}},
      {hash1: {a: 1, b: 2, c: 3},
        hash2: {c: 3, d: 5, b: 1},
        expected_hash: {a: 1, b: 2}}
    ].each do |test_case|
      it "test case" do
        expect(test_case[:hash1].my_diff(test_case[:hash2])).to eq(test_case[:expected_hash])
      end
    end
  end
end