class Product < ActiveRecord::Base
  ratyrate_rateable 'visual_effects', 'original_score', 'director', 'custome_design'

  belongs_to :category
  has_many :comments

  validates :name, presence: true,
            length: { minimum: 5 }

 scope :by_category, -> (category) {where category: category}
end
