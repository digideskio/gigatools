module GigatoolsUtils
  # This method sets instance variables from a json list
  def set_attributes(json)
    json.each do |key,value|
      if value.class == String
       value = (value.strip.empty?)? nil : value.strip
      end
      instance_variable_set("@#{key}", value)
    end
  end
end
