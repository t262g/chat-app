class Message < ApplicationRecord
  belongs_to :user
  belongs_to :room
  validates :content, presence: true, unless: :was_attached?
  has_one_attached :image

  def was_attached?
    self.image.attached?
  end
end
