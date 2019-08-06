class Pet < ApplicationRecord
  SPECIES = %w(dog cat snake turtle unicorns)
  validates :name, presence: true
  validates :specie, inclusion: {in: SPECIES}
end
