gem 'authlogic'

rake 'gems:install GEM=authlogic', :sudo => true

route 'map.resource :account, :controller => "users"'
route 'map.resources :users'
route 'map.resource :user_session'
route 'map.root :controller => "user_sessions", :action => "new"'

File.open('config/environments/test.rb', 'a') do |file|
  file.puts "config.gem 'rspec-rails', :lib => false"
  file.puts "config.gem 'rspec', :lib => false"
  file.puts "config.gem 'cucumber'"
  file.puts "config.gem 'webrat'"
end

file "db/migrate/#{timestamp}_create_users.rb", URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/db/migrate/create_users.rb').read

file 'app/controllers/application_controller.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/controllers/application_controller.rb').read
file 'app/controllers/password_resets_controller.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/controllers/password_resets_controller.rb').read
file 'app/controllers/user_sessions_controller.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/controllers/user_sessions_controller.rb').read
file 'app/controllers/users_controller.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/controllers/users_controller.rb').read

file 'app/helpers/application_helper.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/helpers/application_helper.rb').read
file 'app/helpers/user_sessions_helper.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/helpers/user_sessions_helper.rb').read
file 'app/helpers/users_helper.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/helpers/users_helper.rb').read

file 'app/models/user.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/models/user.rb').read
file 'app/models/user_session.rb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/models/user_session.rb').read

file 'app/views/password_resets/edit.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/password_resets/edit.html.erb').read
file 'app/views/password_resets/new.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/password_resets/new.html.erb').read
file 'app/views/user_sessions/new.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/user_sessions/new.html.erb').read
file 'app/views/users/_form.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/users/_form.html.erb').read
file 'app/views/users/edit.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/users/edit.html.erb').read
file 'app/views/users/new.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/users/new.html.erb').read
file 'app/views/users/show.html.erb', URI.parse('http://github.com/rayvinly/rails_templates/raw/master/authlogic/app/views/users/show.html.erb').read
