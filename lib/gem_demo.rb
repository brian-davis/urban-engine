# frozen_string_literal: true

require "text"

require_relative "gem_demo/version"
require_relative "gem_demo/hello_world"

# GemDemo is a demonstration of building a Rubygems library.
module GemDemo
  class Error < StandardError; end
end
