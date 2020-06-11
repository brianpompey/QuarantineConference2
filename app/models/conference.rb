class Conference < ApplicationRecord
    has_many :donations
    has_many :users, through: :donations
    has_many :workshops
    accepts_nested_attributes_for :workshops, reject_if: lambda {|attributes| attributes['name'].blank?}
    scope :searched, -> (category) {where("category LIKE ?", category)}
    scope :longest_name, -> {where(name: Conference.pluck(:name).max_by(&:length))}

    
    
end
