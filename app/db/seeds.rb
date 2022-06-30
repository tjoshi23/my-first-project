# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Category.find_or_create_by!(name: "Shelter")
Category.find_or_create_by!(name: "Food")
Category.find_or_create_by!(name: "Health and Hygiene")
Category.find_or_create_by!(name: "Advice")
Category.find_or_create_by!(name: "Recreation")
Category.find_or_create_by!(name: "Emergency")
 debugger
Category.where(id: [3,4,6]).each do |data|
#Category.where(name: ["Health and Hygiene","Advice","Emergency"]).each do |data|
  bournemouth = data.services.find_or_create_by!(name: "Accident and Emergency Bournemouth") 
  bournemouth.create_service_detail(location: "Royal Bournemouth Hospital, Castle Ln E, Bournemouth BH7 7DW",contact_detail: "01202 303626",services: ["Emergency room"],days: "24 Hours",lat: 22.699539 ,long: 75.879753) unless bournemouth.service_detail.present?
  poole = data.services.find_or_create_by!(name: "Accident and Emergency Poole")
  poole.create_service_detail(location: "Poole Hospital, Longfleet Rd, Poole BH15 2JB",contact_detail: "01202 665511",services: ["Emergency room"],days: "24 Hours",lat: 22.699539 ,long: 75.879753) unless poole.service_detail.present?
end

Category.where(id: [2,3,4,5]).each do |data|
	bh=data.services.find_or_create_by!(name: "BH1 Project")
	bh.create_service_detail(location: "107 Palmerston Road, Boscombe, BH1 4HP",contact_detail: "01202 309803, ruth.mattingley@salvationarmy.org.uk,",services: ["Meals, Clothes, washing facilities, some healthcare, 121 support, referrals to other agencies (Housing, NHS, employment)"],days: "Monday to Friday 10am - 4pm",lat: 22.699539 ,long: 75.879753) unless bh.service_detail.present?)
end