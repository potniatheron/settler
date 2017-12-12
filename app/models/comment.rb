class Comment < ApplicationRecord
	validates :body, presence: true
 	validates :user, presence: true
  	validates :article, presence: true

  	belongs_to :user
 	belongs_to :article

  scope :approved, -> { where status: 'approved'}
  scope :draft, -> { where status: 'draft'}

end
