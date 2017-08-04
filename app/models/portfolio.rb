class Portfolio < ApplicationRecord
  has_many :technologies
  validates_presence_of :title, :body, :main_image, :thumb_image

def self.angular
  where(subtitle: 'Angular')
end

def self.by_position
  order("position ASC")
end

end
