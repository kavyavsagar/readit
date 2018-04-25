class Article < ActiveRecord::Base
	belongs_to :users
	has_many :comments, dependent: :destroy
	 
	validates :title, presence: true, length: {minimum: 3, maximum: 50}
	validates :post, presence: true
end
