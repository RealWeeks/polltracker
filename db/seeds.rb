Vote.delete_all
Bill.delete_all
Pol.delete_all
District.delete_all
district_one = District.create!(name: "District One", zipcode: "01012")
district_two = District.create!(name: "District Two", zipcode: "01002")
district_three = District.create!(name: "District Three", zipcode: "01420")
district_four = District.create!(name: "District Four", zipcode: "01747")
district_five = District.create!(name: "District Five", zipcode: "01581")
district_six = District.create!(name: "District Six", zipcode: "01730")
district_seven = District.create!(name: "District Seven", zipcode: "02110")
district_eight = District.create!(name: "District Eight", zipcode: "02021")
district_nine = District.create!(name: "District Nine", zipcode: "02210")


pol_one = Pol.create!(party: "Democrat", name: "Richard Neil", district: district_one)
pol_two = Pol.create!(party: "Democrat", name: "James McGovern", district: district_two)
pol_three = Pol.create!(party: "Democrat", name: "Niki Tsongas", district: district_three)
pol_four = Pol.create!(party: "Democrat", name: "Joseph Kennedy", district: district_four)
pol_five = Pol.create!(party: "Democrat", name: "Katherine Clark", district: district_five)
pol_six = Pol.create!(party: "Democrat", name: "Seth Moulton", district: district_six)
pol_seven = Pol.create!(party: "Democrat", name: "Michael Capuano", district: district_seven)
pol_eight = Pol.create!(party: "Democrat", name: "Stephen Lynch", district: district_eight)
pol_nine = Pol.create!(party: "Democrat", name: "William Keating", district: district_nine)


1.upto(10) do |i|
  bill = Bill.create!(name:"Bill#{i}", number: "#{i}", status: "status #{i}")
  Vote.create!(how_vote: "Yea", pol: pol_one, bill: bill)
end

bill_one = Bill.create(name:"Repeal affordable care act (Healthcare)", number: "HR 45", status: "Failed to pass")

Vote.create!(how_vote: "Nay", pol: pol_one, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_two, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_three, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_four, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_five, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_six, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_seven, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_eight, bill: bill_one)
Vote.create!(how_vote: "Nay", pol: pol_nine, bill: bill_one)



require 'csv'

CSV.foreach(Rails.root.join('db', 'seeds', 'district.csv'), :headers => true, :col_sep => ',') do |row|
  District.create(:zipcode => row['zipcode'], :name => row['name'])
end

## parse the csv file
## for each record in the csv file:
## Model.create!(zip: value_from_row_1_column_zip, row2: value2)
