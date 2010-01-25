gem 'rspec-rails', :lib => false
gem 'rspec', :lib => false
gem 'cucumber'
gem 'webrat'

rake 'gems:install GEM=rspec-rails', :sudo => true
rake 'gems:install GEM=rspec', :sudo => true
rake 'gems:install GEM=cucumber', :sudo => true
rake 'gems:install GEM=webrat', :sudo => true

generate :rspec
generate :cucumber
