class Park < ActiveRecord::Base
  validates :name, :location, :description, :park_type, presence: true

  scope :by_name, -> (name_parameter) { where("name like ?", "%#{name_parameter}%")}
end
