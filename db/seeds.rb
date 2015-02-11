Vote.delete_all
Bill.delete_all
Pol.delete_all
District.delete_all
district_one = District.create!(name: "District One", zipcode: "02139")
pol_one = Pol.create!(party: "Democrat", name: "Bob", district: district_one)

1.upto(10) do |i|
  bill = Bill.create!(name:"Bill#{i}", number: "#{i}", status: "status #{i}")
  Vote.create!(how_vote: "Yea", pol: pol_one, bill: bill)
end

