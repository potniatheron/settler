class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

	has_many :orders
	has_many :comments, dependent: :destroy

	def self.search(search_term)
  		Article.where("title LIKE ?", "%#{search_term}%")
	end

	def highest_rating_comment
  		comments.rating_desc.first
	end

end
