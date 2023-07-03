# frozen_string_literal: true

# $LOAD_PATH.unshift File.expand_path("../lib", __dir__)
# require "gem_demo"
require_relative "../lib/gem_demo"

require "minitest/autorun"
require 'minitest/reporters'
Minitest::Reporters.use! [Minitest::Reporters::DefaultReporter.new(:color => true)]
