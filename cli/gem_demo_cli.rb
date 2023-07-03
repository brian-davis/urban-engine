require "thor"
require_relative "../lib/gem_demo"

class GemDemoCLI < Thor
  # $ bin/gem_demo call George
  desc "call NAME", "Say hello to NAME"
  def call(name = "World")
    puts GemDemo::HelloWorld.call(name)
  end

  # $ bin/gem_demo name_distance Ringo --from Richard
  desc "name_distance NAME", "Show how distant two names are"
  method_option :from, aliases: "-f"
  def name_distance(name)
    hw = GemDemo::HelloWorld.new(name)
    puts hw.name_distance(options[:from])
  end

  # https://github.com/rails/thor/issues/244
  def self.exit_on_failure?
    true # 1
  end
end
