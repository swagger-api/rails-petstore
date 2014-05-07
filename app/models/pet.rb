class Pet < ActiveRecord::Base
  belongs_to :category
  belongs_to :tag
  has_many   :stores

  validates :name, presence: true
end
