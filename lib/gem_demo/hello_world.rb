module GemDemo
  # GemDemo::HelloWorld provides personal name functionality.
  class HelloWorld
    class << self

      # Compose a greeting message.
      #
      # @param name [String] the name to greet
      # @return [String] a greeting with the interpolated name.
      def call(name = "World")
        "Hello, #{name}!"
      end
    end

    # Controls the personal name.
    # @return [String] the personal name
    attr_reader :name

    def initialize(name)
      @name = name
    end

    # Compares the name to another name in terms
    # of number of changes necessary to make both equal.
    #
    # @param other_name [String] the name to compare
    # @return [Numeric] the number of changes required to make both names euqal.
    def name_distance(other_name)
      Text::Levenshtein.distance(name, other_name)
    end
  end
end
