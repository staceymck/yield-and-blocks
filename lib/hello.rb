def hello_t(array) #this method carries out the same functionality as #each; it iterates over each element in an array
    if block_given?
        i = 0
        while i < array.length
            yield(array[i])
            i += 1
        end
        array #returns original array
    else
        puts "Hey! No block was given!"
    end
end 

# call your method here!
hello_t(["Tim", "Tom", "Jim"]) do |name|
    if name.start_with?("T")
      puts "Hi, #{name}"
    end
  end 
