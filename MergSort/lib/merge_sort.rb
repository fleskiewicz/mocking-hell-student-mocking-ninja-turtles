class Merge
  def self.merge_sort(array)
    raise ArgumentError, 'no strings allowed' if array.is_a? String
    raise ArgumentError, 'no ints allowed' if array.is_a? Integer
    raise ArgumentError, 'no floats allowed' if array.is_a? Float

    return array if array.length <= 1
    middle = array.length / 2
    left = merge_sort(array[0...middle])
    right = merge_sort(array[middle..-1])
    merge(left, right)
  end

  def self.merge(left, right)
    result = []
    until left.empty? || right.empty?
      result << (left.first <= right.first ? left.shift : right.shift)
    end
    result + left + right
  end

  def self.less?(l, r)
    l < r
  end

  def self.sorted?(array)
    (1..array.length).each do |i|
      return false if less?(array[i], array[i - 1])
      return true
    end
  end
end
