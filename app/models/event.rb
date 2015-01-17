class Event < ActiveRecord::Base
  belongs_to :app, dependent: :destroy


  # after_initialize do
  #   if new_record?
  #     self.created_on ||= DateTime.new.to_date # be VERY careful with ||= and False values
  #   end
  # end

  
end
