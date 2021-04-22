class CommentResource < JSONAPI::Resource
    attributes :name, :message 

    has_one :post
    key_type :uuid
    exclude_links :default

end
