class App < ActiveRecord::Base
  belongs_to :user
  has_many :events

  # default_scope {joins(:events).count}

  def self.by_events
    order('events_count DESC')
  end


  validates :name, presence: true
  validates :desc, presence: true


end
