module ApplicationHelper
  
  def top_categories(n)
    @categories = []
    Category.all.each do |c|
      @categories << c
    end
    @categories.sort_by! { |c| c.posts.count }
  end

end
