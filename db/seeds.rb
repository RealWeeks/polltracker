District.delete_all
Pol.delete_all
district_one = District.create!(name: "District One", zipcode: "02139")
pol_one = Pol.create!(party: "Democrat", name: "Bob", district: district_one)
