require 'minitest/autorun'
require './blog'

class TestBlo < Minitest::Test

  def setup
    @blog = Blog.new
  end

  def test_title_is_first_post
    assert_equal "first attempt", @blog.title
  end

  def test_caption_is_first_caption
    assert_equal "first caption", @blog.caption
  end

end

