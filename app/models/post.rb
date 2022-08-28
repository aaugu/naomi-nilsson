class Post < ApplicationRecord
  belongs_to :user

  validates :title, :content, :url, presence: true
  validates :url, format: {with: /\Ahttps:\/\/(?:www\.)?[-a-zA-Z0-9@:%._\+~#=]{1,256}\.[a-zA-Z0-9()]{1,6}\b(?:[-a-zA-Z0-9()@:%_\+.~#?&\/=]*)\z/}
end
