# this class is linked to the parts table
class Part < ApplicationRecord
  has_and_belongs_to_many :assemblies
end
