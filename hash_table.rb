class Hash
  @storage = []
  @buckets = 8
  @size = 0
  
  def hash(str, buckets)
    hash = 5381

    str.split("").each do |i|
        char = i
        hash = ((hash << 5) + hash) + char.ord
    end

    return hash % buckets
  end
end