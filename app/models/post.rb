class Post
  include Mongoid::Document
  include Mongoid::Timestamps::Short

  field :title, type: String
  field :description, type: String
  field :content, type: String
  field :publish_date, type: DateTime
  field :category, type: String

  has_and_belongs_to_many :categories

  validates_presence_of :title, :description, :content
end
