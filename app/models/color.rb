class Color < ApplicationRecord
  validates :color, presence: true
  validates :code, presence: true
end
