# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Centre.create([{ centre_id: 'bondijunction' }, { centre_id: 'sanfrancisco' }])
centre1 = Centre.first
centre2 = Centre.last

Crawl.create([
  { centre_id: centre2.id, name: 'Sneaker Showcase', description: 'An exclusive sneak peek ant the rarest kicks on the planet!' },
  { centre_id: centre1.id, name: 'High Heel Showcase', description: 'An amazing first look at the most beautiful designs of the season.' },
  { centre_id: centre2.id, name: 'Gadget Showcase', description: 'Private Event showcasing cutting edge electronics' }
])

crawl = Crawl.first

Store.create([
  { crawl_id: crawl.id, store_service_id: 42_952 },
  { crawl_id: crawl.id, store_service_id: 18_395 },
  { crawl_id: crawl.id, store_service_id: 14_858 },
  { crawl_id: crawl.id, store_service_id: 34_411 },
  { crawl_id: crawl.id, store_service_id: 14_864 }
])
