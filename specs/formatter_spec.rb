require 'minitest/autorun'
require_relative '../models/wordformatter.rb'

class TestFormatter < Minitest::Test

  def setup

    postcode1 = "ez16 9ly"
    @postcode1 = WordFormatter.new( postcode1 )

    string1 = "code clan"
    @string1 = WordFormatter.new( string1 )

  end

  def test_postcodeup
    postcode_up = @postcode1.postcodeup
    assert_equal( "EZ16 9LY", postcode_up )
  end

  def test_camelcase
    camelword1 = @string1.camelcase
    assert_equal( "CodeClan", camelword1 )
  end

end
