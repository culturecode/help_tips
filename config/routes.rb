Rails.application.routes.draw do
  match 'help_tips/hide' => 'help_tips#hide', :as => :hide_help_tips, :via => [:get, :post]
  match 'help_tips/reset' => 'help_tips#reset', :as => :reset_help_tips, :via => [:get, :post]
end
