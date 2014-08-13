class Parser
  def self.to_object input
    RecursiveOpenStruct.new(JSON.parse(input),:recurse_over_arrays => true)
  end

  def self.to_json input
    input.to_hash.to_json
  end
end


