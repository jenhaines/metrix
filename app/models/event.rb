class Event < ActiveRecord::Base
  belongs_to :app, dependent: :destroy
end
