class Conference < ApplicationRecord
    has_many :donations
    has_many :users, through: :donations
    has_many :workshops
    accepts_nested_attributes_for :workshops, reject_if: lambda {|attributes| attributes['name'].blank?}
end
