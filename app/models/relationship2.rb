class Relationship2 < ApplicationRecord
  belongs_to :user
  belongs_to :like, class_name: 'Micropost'

  validates :user_id, presence: true
  validates :like_id, presence: true
end
class Relationship2 < ApplicationRecord
  belongs_to :user
  belongs_to :like, class_name: 'Micropost'

  validates :user_id, presence: true
  validates :like_id, presence: true
end
