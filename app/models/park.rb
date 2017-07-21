class Park < ActiveRecord::Base
  validates :name, :location, :description, :park_type, presence: true

  scope :search_by_name, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}

  scope :search_by_location, -> (location_parameter) { where("location like ?", "%#{location_parameter}%")}

  scope :search_by_park_type, -> (park_type_parameter) { where("park_type like ?", "%#{park_type_parameter}%")}

  max_paginates_per 10
  paginates_per 10
end
