class Barangay < ApplicationRecord
  validates_presence_of :code
  validates_presence_of :name
  validates_presence_of :old_name
  belongs_to :municipality
end
