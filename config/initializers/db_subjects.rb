# save subjects database settings in global var
DB_SUBJECTS = YAML::load(ERB.new(File.read(Rails.root.join("config","database_subjects.yml"))).result)[Rails.env]
