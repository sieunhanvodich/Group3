class Bill < ActiveRecord::Base
  belongs_to :table

  def completed?
  	!completed_at.blank?
  end
end
