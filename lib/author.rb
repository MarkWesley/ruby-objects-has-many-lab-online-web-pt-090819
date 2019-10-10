class Author
  attr_accessor :name



  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

  def add_post(post)
    @posts << post
  end

end
