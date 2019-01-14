require 'active_support/inflector'

module FoodieDavid
  class Food
    def self.portray(food)
      if food.downcase == "broccoli"
        "Gross!"
      else
        "Delicious!"
      end
    end

    def self.pluralize(word)
      word.pluralize
    end

  end
end
