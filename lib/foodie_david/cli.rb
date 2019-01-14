require 'foodie_david'
require 'thor'
module FoodieDavid
  class CLI <Thor
    #portray
    desc "portray ITEM", "Determines if a piece of food is gross or delicious"
    def portray(name)
      puts FoodieDavid::Food.portray(name)
    end
    #pluralize
    desc "pluralize", "Pluralizes a word"
    method_option :word, aliases: "-w"
    def pluralize
      puts FoodieDavid::Food.pluralize(options[:word])
    end
  end
end