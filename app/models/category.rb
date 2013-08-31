class Category
  include Mongoid::Document
  field :name, type: String
  field :description, type: String
  
  has_and_belongs_to_many :posts

  private

  def most_popular(n)
    # returns the most popular n categories
    popular = []
    while popular.size < n
      Category.all.each do |c|
        popular.last && popular.last.posts.count > c.posts.count ? popular << c : popular.push(c)
      end
    end
  end

end
