set :log_level,       :info
set :keep_releases,   5

set :application,   'kit-gramota'
set :repo_url,      'git@github.com:nutav/kitgramota.git'
set :deploy_to,     '/home/user/webapps/kit-gramota.ru'

set :linked_files,  %w(.env)

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
