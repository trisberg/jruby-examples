# Run the equivalent of rake db:migrate on startup
if ENV["VCAP_SERVICES"] != nil
  db_migrate = Rails.root.join('db','migrate')
  if db_migrate.directory? 
    ActiveRecord::Migrator.migrate(db_migrate)
  end
end