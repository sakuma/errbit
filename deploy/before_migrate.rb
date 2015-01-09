Chef::Log.info("Running deploy/before_migrate.rb")
current_release = release_path
rails_env = new_resource.environment["RAILS_ENV"]

execute "rake assets:precompile" do
  cwd current_release
  environment "RAILS_ENV" => env
  command "bundle exec rake assets:precompile"
end
