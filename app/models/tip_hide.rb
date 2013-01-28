class TipHide < ActiveRecord::Base
  belongs_to :user
  
  def self.hidden?(user, identifier)
    where(:user_id => user.id, :identifier => identifier).exists?
  end
end
