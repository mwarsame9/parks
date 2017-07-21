class Park < ActiveRecord::Base
  validates :name, :location, :description, :park_type, presence: true
end
