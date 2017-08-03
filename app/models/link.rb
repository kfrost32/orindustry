class Link < ActiveRecord::Base
  validates :title, presence: true
  validates :site, presence: true
  validates :url, presence: true
  validates :description, presence: true
end
