load_template 'http://github.com/rayvinly/rails_templates/raw/master/helpers.rb'
load_template 'http://github.com/rayvinly/rails_templates/raw/master/authlogic.rb'
load_template 'http://github.com/rayvinly/rails_templates/raw/master/compass.rb'
load_template 'http://github.com/rayvinly/rails_templates/raw/master/formtastic.rb'
load_template 'http://github.com/rayvinly/rails_templates/raw/master/rspec_cucumber.rb'
load_template 'http://github.com/rayvinly/rails_templates/raw/master/will_paginate.rb'

run 'rm public/index.html'
run 'touch tmp/.gitignore log/.gitignore vendor/.gitignore'
run 'cp config/database.yml config/database.yml.example'

rake 'db:create'
rake 'db:migrate'
rake 'db:create', :env => 'test'
rake 'db:test:prepare'

file '.gitignore', <<-END
.DS_Store
config/database.yml
coverage/*
coverage.data
db/schema.rb
log/*.log
tmp/*
public/stylesheets/compiled
public/system
END

git :init
git :add => '.'
git :commit => "-a -m 'Rails app setup'"