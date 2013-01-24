module HelpTipsHelper
  def help_tip(title = nil, &block)
    content_for(:help_tip) { render('help_tips/help_tip', :title => title, :body => capture(&block)) unless TipHide.hidden?(current_user, current_route) }
  end

  def help_modal(title = nil, &block)
    content_for(:help_modal) { render('help_tips/help_modal', :title => title, :body => capture(&block)) }
  end

  def help_button
    icon = '<i class="icon-question-sign"></i> '.html_safe
    link_to icon + 'Help', "#help-modal", :class => 'btn', :data => {:toggle => 'modal'}
  end  

  def route?(string)
    current_route == string
  end

  def current_route
    "#{params[:controller]}##{params[:action]}"
  end  
end