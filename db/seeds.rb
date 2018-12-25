# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

seed_file = File.join(Rails.root, 'db', 'seeds.yml')
config = HashWithIndifferentAccess.new(YAML::load_file(seed_file))
Project.create(config["projects"])
Todo.create(config["todos"])
