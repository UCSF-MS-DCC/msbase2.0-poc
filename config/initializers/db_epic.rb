# save stats database settings in global var
DB_EPIC = YAML::load(ERB.new(File.read(Rails.root.join("config","database_epic.yml"))).result)[Rails.env]
