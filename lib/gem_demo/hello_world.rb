module GemDemo
  class HelloWorld
    class << self
      def call(name = "World")
        "Hello, #{name}!"
      end
    end

    attr_reader :name

    def initialize(name)
      @name = name
    end

    def name_distance(other_name)
      Text::Levenshtein.distance(name, other_name)
    end
  end
end
