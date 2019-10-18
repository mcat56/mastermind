require_relative 'test_helper'


class GenerateCodeTest < Minitest::Test


  def test_generate_code
    assert_match(/[A-Z]{4}/, GenerateCode.generate_code(4))
    assert_match(/[A-Z]{6}/, GenerateCode.generate_code(6))
    assert_match(/[A-Z]{8}/, GenerateCode.generate_code(8))
  end


end
