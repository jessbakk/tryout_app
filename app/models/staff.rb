class Staff < ApplicationRecord
  belongs_to :coach
  belongs_to :team
end
