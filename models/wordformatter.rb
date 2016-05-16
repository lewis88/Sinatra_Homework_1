class WordFormatter

  def initialize( string1 )
    @string1 = string1
  end

  def postcodeup
    post_code = @string1.upcase
    return post_code
  end

  def camelcase
    i = 0
    str_array = @string1.split("")
    str_array[0] = str_array[0].upcase
    while i < str_array.length
      if str_array[i] == " "
        str_array[i] = ""
        str_array[i+1] = str_array[i+1].upcase
        i += 1
      else
        i +=1
      end
    end
    return str_array.join
  end

end
