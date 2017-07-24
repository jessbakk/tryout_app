class Comment < ApplicationRecord
  belongs_to :coach
  belongs_to :player
end
