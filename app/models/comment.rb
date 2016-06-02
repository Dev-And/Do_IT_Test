class Comment < ActiveRecord::Base
  validates :content, presence: true
  belongs_to :product
  belongs_to :user
end
