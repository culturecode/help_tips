module HelpTipsHelper

  def help_tip_content(*args, &block)
    content_for :help_tip, help_tip(*args, &block)
  end

  def help_tip(title = nil, body = nil, identifier = "#{params[:controller]}_#{params[:action]}", &block)
    if block_given?
      identifier = body
      body = capture(&block)
    end

    render('help_tips/help_tip', :title => title, :body => body, :identifier => identifier) unless TipHide.hidden?(current_user, identifier)
  end

  def help_modal(title = nil, &block)
    content_for(:help_modal) { render('help_tips/help_modal', :title => title, :body => capture(&block)) }
  end

  def help_button
    icon = '<i class="icon-question-sign"></i> '.html_safe
    link_to icon + 'Help', "#help-modal", :class => 'btn', :data => {:toggle => 'modal'}
  end  
end