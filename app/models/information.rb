class Information < ApplicationRecord
  belongs_to :user

  validates :page, :name, :content, presence: true
  validates :name, uniqueness: true
end
