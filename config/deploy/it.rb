set :stage, :it
set :branch, :harsha
# set :rails_env, :it
set :deploy_to, '/u01/apps/qwinix/event_scheduler'
# set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{harsha@35.154.44.206}
role :web, %w{harsha@35.154.44.206}
role :db, %w{harsha@35.154.44.206}
server '35.154.44.206', roles: %w{:web, :app, :db}, user: 'harsha'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}