class Line < ActiveRecord::Base
  attr_accessible :frequency, :name
  
  validates_presence_of :name
  validates_presence_of :frequency
  validates :frequency, :numericality => true
  
  # def is_data_ok?
  #   if frequency.present? && name.present?
  #     return true
  #   else 
  #     return false
  #   end
  # end
  
  
end
