class TipHide < ActiveRecord::Base
  belongs_to :user
  
  def self.hidden?(user, route)
    where(user_id: user.id, route: route).exists?
  end
end
