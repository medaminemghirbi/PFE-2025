class Delegation < ActiveRecord::Base
  belongs_to :municipalitie
  has_many :addresses
end