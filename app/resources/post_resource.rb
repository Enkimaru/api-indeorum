class PostResource < JSONAPI::Resource
    attributes :title, :body 

    has_many :comments
    key_type :uuid
    exclude_links :default

  def meta(options)
    comments_count = Post.find(_model.id).comments.distinct.count
    {
     commentsCount: comments_count
    }
   end
end
