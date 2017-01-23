class Entry
  attr_accessor :title, :body, :posted_at, :published
  def initialize(title, body, posted_at, published)
    @title = title
    @body = body
    @posted_at = posted_at
    @published = published
  end
end
