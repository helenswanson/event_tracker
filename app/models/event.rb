class Event < ActiveRecord::Base
  validates :location, presence: true
end
