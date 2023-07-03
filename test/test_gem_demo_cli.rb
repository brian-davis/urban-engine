# frozen_string_literal: true

require "test_helper"

class TestGemDemoCLI < Minitest::Test
  CLI_EXECUTABLE = File.expand_path(File.join(__dir__, "../bin/gem_demo")).freeze

  def test_cli_call_default
    out, err = capture_subprocess_io do
      system("#{CLI_EXECUTABLE} call")
    end

    assert_equal("Hello, World!\n", out)
    assert_empty(err)
  end

  def test_cli_call_argument
    out, err = capture_subprocess_io do
      system("#{CLI_EXECUTABLE} call people")
    end

    assert_equal("Hello, people!\n", out)
    assert_empty(err)
  end

  def test_cli_name_distance
    out, err = capture_subprocess_io do
      system("#{CLI_EXECUTABLE} name_distance Will --from Bill")
    end

    assert_equal("1\n", out)
    assert_empty(err)
  end

  def test_cli_name_distance_alias
    out, err = capture_subprocess_io do
      system("#{CLI_EXECUTABLE} name_distance Tom -f Joe")
    end

    assert_equal("2\n", out)
    assert_empty(err)
  end
end
