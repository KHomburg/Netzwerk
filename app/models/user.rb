class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def self.search(term, page)
    if term
      where('name LIKE ? OR firstname LIKE ? OR bund LIKE ?', "%#{term}%", "%#{term}%", "%#{term}%").paginate(page: page, per_page: 5).order('id DESC')
    else
      paginate(page: page, per_page: 5).order('id DESC') 
    end
  end

end
