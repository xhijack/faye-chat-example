require "bundler/capistrano"
require 'capistrano/ext/multistage'

set :stages, %w(production)
set :default_stage, "production"

def template(from, to)
    erb = File.read(from)
    put ERB.new(erb).result(binding), to
end

set :application, "set your application name here"
set :repository,  "set your repository location here"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an inte
# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp',nd
