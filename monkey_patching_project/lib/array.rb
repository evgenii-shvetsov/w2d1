# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array

  def span  # DONE
    if self.length == 0
        return nil
    end
    maximum = self.max
    minimum = self.min
    difference = maximum - minimum
    difference
  end

  def average # DONE
    if self.length == 0
        return nil
    end
    self.sum / (self.length * 1.0) 
  end

  def median #DONE
    if self.length == 0
        return nil
    elsif self.length.odd?
        sorted = self.sort
        middle = sorted.length / 2
        sorted[middle]
    else
        sorted = self.sort
        if sorted.length == 2
            sorted.sum / (sorted.length * 1.0)
        else
            middle = sorted.length / 2
            pre_middle = middle - 1
            result = (sorted[middle] + sorted[pre_middle]) / 2.0
            result
        end
        end

    end

    
    def counts #DONE
        hash = Hash.new(0)
        self.each do |ele|
            hash[ele] += 1
        end
        hash
    end

    def my_count(val) #Done
        hash = counts
        if hash.has_key?(val)
            hash[val]
        else
            0
        end
    end

    def my_index(val) #Done
        indices = []
        self.each_with_index do |num, i|
            indices << i if num == val
        end
        if indices.length == 0
            nil
        else
            indices[0]
        end
    end

    def my_uniq #Done
        new_arr = []
        self.each do |ele|
            if !new_arr.include?(ele)
                new_arr << ele
            end
        end
        new_arr
    end

    def my_transpose
        length = self.first.length
        (0...length).map do |i|
            self.map {|arr| arr[i]}
        end
    end
  
end
