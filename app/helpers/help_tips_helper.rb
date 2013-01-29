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

  def help_modal_content(title = nil, body= nil, &block)
    if block_given?
      body = capture(&block)
    end
    content_for(:help_modal) { render('help_tips/help_modal', :title => title, :body => body) }
  end

  def help_button(html_options = {})
    html_options.reverse_merge! :class => 'btn', 'data-toggle' => 'modal'
    link_to('<i class="icon-question-sign"></i> Help'.html_safe, "#help-modal", html_options)
  end  
end