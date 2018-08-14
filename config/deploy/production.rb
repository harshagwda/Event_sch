set :stage, :production
set :branch, :nikhil
# set :rails_env, :it
set :deploy_to, '/u01/apps/qwinix/event_scheduler'
# set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{deploy@35.154.244.179}
role :web, %w{deploy@35.154.244.179}
role :db, %w{deploy@35.154.244.179}
server '35.154.244.179', roles: %w{:web, :app, :db}, user: 'deploy'


set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}