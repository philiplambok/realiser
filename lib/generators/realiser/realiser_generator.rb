class RealiserGenerator < Rails::Generators::NamedBase
  source_root File.expand_path('templates', __dir__)

  def create_db_migration_file
    generate 'migration CreateRealiserSettings key:string:index value:string'
  end
end
