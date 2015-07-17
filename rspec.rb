require 'minitest/autorun'
require './blog'

describe Blog do 
  before do
    @blog = Blog.new
  end

  describe "#title" do
    it "returns the title of the blog" do
      @blog.title.must_equal "first attempt"
    end
  end

  describe "#caption" do 
    it "returns the caption of the blog" do
      @blog.caption.must_equal "first caption"
    end
  end

end
