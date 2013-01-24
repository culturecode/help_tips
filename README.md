# Requirements 

Built for use with Twitter Bootstrap view template

# Setup

In your gemfile

```ruby
gem 'help_tips'
```
In your database
```ruby
  create_table :tip_hides do |t|
    t.integer :user_id
    t.integer :tip_id
    t.string :route

    t.timestamps
  end
```


# Usage

In your View
```erb
<% help_tip 'Getting Started' do %>
  <p>Click a block's name to view its attached files and detailed information; or use the search box to filter the list of blocks.</p>
  <p>Try typing <code>H1</code> into the search box and clicking <code>risk H1</code> when it appears to find all H1 blocks.</p>
  <p>Click the <span class="btn"><i class="icon-question-sign"></i> Help</span> button for more information on how to search.</p>
<% end %>
```