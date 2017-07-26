class Player < ApplicationRecord
  belongs_to :team
  has_many :comments, -> { order('created_at DESC') }, dependent: :destroy

  has_attached_file :image, styles: { medium: "500x500>", thumb: "250x250>" }, presence: true
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
