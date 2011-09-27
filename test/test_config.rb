require "helper"

class ConfigTest < MiniTest::Unit::TestCase
  def test_can_initialize_with_dot_file
    Flickrb::Flickr.const_set(:DOT_FILES, [File.dirname(__FILE__) + 'fixtures/.flickrc'])
    @flickrb = Flickrb::Flickr.new

    assert_equal @flickrb.api_key, 'test_api_key'
    assert_equal @flickrb.secret, 'secret_key'
  end
end
