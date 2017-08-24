class Post < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content, presence: true, length: { maximum: 140 }

  def self.search(term, page) #function for search and paginate - search doesnt work, so no view for that
    if term
      where('post(name) LIKE ?', "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 10).order('id DESC') 
    end
  end
end
