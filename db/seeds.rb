# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Centre.create([{ centre_id: 'hawthorn' }, { centre_id: 'sanfrancisco' }])
centre1 = Centre.first
centre2 = Centre.last
Crawl.create([
  { centre_id: centre2.id, name: 'New Looks', description: 'Fall 2015, what is in.' },
  { centre_id: centre1.id, name: 'World Cup', description: '' },
  { centre_id: centre2.id, name: 'Tasting', description: '' }
])

crawl = Crawl.first
Store.create([
  { crawl_id: crawl.id, store_service_id: 42_952 },
  { crawl_id: crawl.id, store_service_id: 18_395 },
  { crawl_id: crawl.id, store_service_id: 14_858 },
  { crawl_id: crawl.id, store_service_id: 34_411 },
  { crawl_id: crawl.id, store_service_id: 14_864 }
])
