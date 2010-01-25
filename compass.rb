# Reference: http://compass-style.org/rails/installer

gem 'haml', :version => '>=2.2.16'
gem 'compass', :version => '>= 0.8.17'

rake 'gems:install GEM=haml', :sudo => true
rake 'gems:install GEM=compass', :sudo => true

css_framework = 'blueprint'
css_dir = 'public/stylesheets/compiled'
sass_dir = 'app/stylesheets'

compass_command = "compass --rails -f #{css_framework} . --css-dir=#{css_dir} --sass-dir=#{sass_dir} "

file 'vendor/plugins/compass/init.rb', <<-CODE
# This is here to make sure that the right version of sass gets loaded (haml 2.2) by the compass requires.
require 'compass'
CODE

run "haml --rails ."
run compass_command

