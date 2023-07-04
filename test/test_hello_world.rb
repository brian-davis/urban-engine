# frozen_string_literal: true

require_relative "test_helper"

class TestHelloWorld < Minitest::Test
  def test_it_does_something_useful
    assert_equal("Hello, World!", GemDemo::HelloWorld.call)
  end

  def test_name_distance
    subject = GemDemo::HelloWorld.new("Jim")
    assert_equal(1, subject.name_distance("Tim"))
  end
end
