class Author

  @@post_count = 0

  def initialize(name)
    @name = name
    @posts = []
  end

  attr_accessor :name

  def posts
    @posts
  end

  def add_post(post)
    @posts << post
    post.author = self
    @@post_count += 1
  end

  def add_post_by_title(title)
    newpost = Post.new(title)
    @posts << newpost
    newpost.author = self
    @@post_count += 1
  end

  def self.post_count
    @@post_count
  end



end
