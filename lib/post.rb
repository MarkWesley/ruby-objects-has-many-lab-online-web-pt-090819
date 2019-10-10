class Post
  attr_accessor :title

  @@all = []

  def initialize(title)
    @title = title
    @@all << self
  end

end
