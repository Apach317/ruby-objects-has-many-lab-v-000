class Author
  attr_accessor :name, :post

  @@post_count = []
  def initialize(name)
    @name = name
    @posts = []
  end

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count << self
  end

  def add_post_by_title(name)
    post = Post.new(name)
    @posts << post
    post.author = self
  end
end
