class App < ActiveRecord::Base
  belongs_to :user
  has_many :events

  validates :name, presence: true
  validates :desc, presence: true
end
