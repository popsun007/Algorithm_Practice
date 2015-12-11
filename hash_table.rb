class Hash_table
  attr_accessor :storage, :buckets, :size
  def initialize
    @storage = []
    @buckets = 8
    @size = 0
  end

  def hash(str, buckets)
    hash = 5381

    str.split("").each do |i|
        char = i
        hash = ((hash << 5) + hash) + char.ord
    end

    return hash % buckets
  end

  def insert(key, value)
    index = hash(key, @buckets)
    if @storage[index]
      @storage[index].each do |tuple|
        if tuple[0] === key
          tuple[1] = value
          @size += 1
          return 
        end
      end
    else
      @storage[index] = []
      @storage[index].push(["cry", 5555])
      @size += 1
      return 
    end

  end

  def wang
    puts "Aoooo"
  end
end

bag = Hash_table.new


puts bag.storage

bag.insert("tess", "haha")

puts bag.storage