set :stage, :it
set :branch, :master
# set :rails_env, :it
set :deploy_to, '/u01/apps/qwinix/Events'
# set :log_level, :debug

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
role :app, %w{harsha@13.230.38.93}
role :web, %w{harsha@13.230.38.93}
role :db, %w{harsha@13.230.38.93}
server '13.230.38.93', roles: %w{:web, :app, :db}, user: 'harsha'

set :ssh_options, {
   #verbose: :debug,
   keys: %w(~/.ssh/id_rsa),
   auth_methods: %w(publickey)
}