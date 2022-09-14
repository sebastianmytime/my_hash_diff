
module SebastianHash
  refine Hash do
    def my_diff(hash)
      hash.each do |key, value|
        self.delete_if {|k, v| k == key and v == value}
      end
      self
    end
  end
end