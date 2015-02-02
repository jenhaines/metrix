class Event < ActiveRecord::Base
  belongs_to :app, :counter_cache => true


  # after_initialize do
  #   if new_record?
  #     self.created_on ||= DateTime.new.to_date # be VERY careful with ||= and False values
  #   end
  # end

  
end
