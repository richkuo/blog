class Post
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :title, type: String
  field :description, type: String
  field :content, type: String
  field :publish_date, type: DateTime
  field :category, type: String

  validates_presence_of :title, :description, :content
end
