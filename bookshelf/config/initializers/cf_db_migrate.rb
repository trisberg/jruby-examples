# Be sure to restart your server when you modify this file.

# Run the equivalent of rake db:migrate on startup
if ENV["VCAP_SERVICES"] != nil
  config_file = Rails.root.join('db','migrate')
  if config_file.directory? 
    ActiveRecord::Migrator.migrate(config_file)
  end
end