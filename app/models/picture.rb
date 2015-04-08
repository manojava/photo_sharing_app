class Picture < ActiveRecord::Base
validates :name, presence: true
validates :description, presence: true
validates :place, presence: true
end
