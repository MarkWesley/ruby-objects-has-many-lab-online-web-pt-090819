class Author
  attr_accessor :name

  @@post_count = 0
  
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    Post.all.select {|post| post.author = self}
  end

  def add_post(post)
    @posts << post
    post.author = self
  end

  def add_post_by_title(title)
    @@post_count += 1
    p = Post.new(title)
    self.add_post(p)
    p
  end

end
