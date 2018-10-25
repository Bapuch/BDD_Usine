# this class is linked to the assemblies table
class Assembly < ApplicationRecord
  has_and_belongs_to_many :parts
end
