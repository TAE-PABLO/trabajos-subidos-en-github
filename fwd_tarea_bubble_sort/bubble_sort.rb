def bubble_sort(array)
 
    return array if array.empty? || array.size == 1
  
   
    for i in 0...array.size - 1 #no es menos 1, es guion 1

      for j in 0...array.size - i - 1

        if array[j] > array[j + 1]
    
        array[j], array[j + 1] = array[j + 1], array[j]
        end
      end
    end
  
    return array
  end

  list = [12 ,212 ,78 ,-0]

  sorted_list = bubble_sort(list)
  
p sorted_list 


