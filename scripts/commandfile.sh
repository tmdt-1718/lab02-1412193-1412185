rm /webemail/tmp/pids/server.pid
bundle install
rails db:create
rails db:migrate
rails s -b 0.0.0.0
