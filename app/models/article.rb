class Article < ApplicationRecord
  validates :title, presence: true,
                    length: { minimum: 5 }

	has_many :orders
	has_many :comments, dependent: :destroy
	
end
