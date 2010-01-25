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

file "db/migrate/#{timestamp}_create_users.rb", File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/db/migrate/create_users.rb')

file 'app/controllers/application_controller.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/controllers/application_controller.rb')
file 'app/controllers/password_resets_controller.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/controllers/password_resets_controller.rb')
file 'app/controllers/user_sessions_controller.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/controllers/user_sessions_controller.rb')
file 'app/controllers/users_controller.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/controllers/users_controller.rb')

file 'app/helpers/application_helper.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/helpers/application_helper.rb')
file 'app/helpers/user_sessions_helper.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/helpers/user_sessions_helper.rb')
file 'app/helpers/users_helper.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/helpers/users_helper.rb')

file 'app/models/user.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/models/user.rb')
file 'app/models/user_session.rb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/models/user_session.rb')

file 'app/views/password_resets/edit.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/password_resets/edit.html.erb')
file 'app/views/password_resets/new.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/password_resets/new.html.erb')
file 'app/views/user_sessions/new.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/user_sessions/new.html.erb')
file 'app/views/users/_form.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/users/_form.html.erb')
file 'app/views/users/edit.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/users/edit.html.erb')
file 'app/views/users/new.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/users/new.html.erb')
file 'app/views/users/show.html.erb', File.read('http://github.com/rayvinly/rails-templates/raw/master/authlogic/app/views/users/show.html.erb')
