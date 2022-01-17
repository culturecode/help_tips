class HelpTipsController < ApplicationController
  def hide
    TipHide.create!(:user => current_user, :identifier => params[:tip_identifier])
    
    respond_to do |format|
      format.html { redirect_back(:fallback_location => root_path) }
      format.js {render :nothing => true}
    end
  end

  def reset
    TipHide.where(:user_id => current_user.id).delete_all
    
    respond_to do |format|
      format.html { redirect_back(:fallback_location => root_path, :notice => 'Help tips have been reset') }
      format.js {render :nothing => true}
    end
  end  
end
