set :application, "Math Team Practice Problems"
set :repository,  "git@github.com:bitcababy/westonmathteam.git"
set :scm_username, 'bitcababy'
set :deploy_to,		"/sites/weston/mathteam.westonmath.org"
set :use_sudo,		false

set :scm, 				"git"
set :user,				"mer"
set :scm_passphrase, "I am not a number"
set :branch, 			"master"
set :deploy_via,	:remote_cache

role :web, "mathteam.westonmath.org"                          # Your HTTP server, Apache/etc
role :app, "mathteam.westonmath.org"                          # This may be the same as your `Web` server
role :db,  "mathteam.westonmath.org", :primary => true # This is where Rails migrations will run

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

#If you are using Passenger mod_rails uncomment this:
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end
