# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'byebug'
require 'roo'
require 'faker'

puts 'Seed Locations'
l1 = Location.create(name: 'SG1')
l2 = Location.create(name: 'SG2')
l3 = Location.create(name: 'SG3')
l4 = Location.create(name: 'SG4')
l5 = Location.create(name: 'SG5')
l6 = Location.create(name: 'SG6')
l7 = Location.create(name: 'SG7')
l8 = Location.create(name: 'OG1')
l9 = Location.create(name: 'OG2')
l10 = Location.create(name: 'OG3')
l11 = Location.create(name: 'OG4')
l12 = Location.create(name: 'OG5')
l13 = Location.create(name: 'OG6')
l15 = Location.create(name: 'OG8')
l16 = Location.create(name: 'OG9')
l17 = Location.create(name: 'OG10')
l19 = Location.create(name: 'S81')
l20 = Location.create(name: 'S82')
l18 = Location.create(name: 'S8')
l14 = Location.create(name: 'SGN')
l21 = Location.create(name: 'SGS')
l22 = Location.create(name: 'OGE')
l23 = Location.create(name: 'OGW')

puts 'Seeding Subcontractors'
s1 = Subcontractor.create(name: 'Aspen')
s2 = Subcontractor.create(name: 'ATCO')
s3 = Subcontractor.create(name: 'Atlas')
s4 = Subcontractor.create(name: 'Citywide Paving')
s5 = Subcontractor.create(name: 'Custom Carpentry')
s6 = Subcontractor.create(name: 'DStar')
s7 = Subcontractor.create(name: 'Dynasty Elevator')
s8 = Subcontractor.create(name: 'E&Y')
s9 = Subcontractor.create(name: 'Faxa')
s10 = Subcontractor.create(name: 'Five Star')
s11 = Subcontractor.create(name: 'Flooring')
s12 = Subcontractor.create(name: 'General Conditions')
s13 = Subcontractor.create(name: 'GG Paint')
s14 = Subcontractor.create(name: 'JMC Stone')
s15 = Subcontractor.create(name: 'Loading Dock')
s16 = Subcontractor.create(name: 'MLJ')
s17 = Subcontractor.create(name: 'Navillus')
s18 = Subcontractor.create(name: 'SIG')
s19 = Subcontractor.create(name: 'Tonage')
s20 = Subcontractor.create(name: 'Triangle')
s21 = Subcontractor.create(name: 'Tristan')
s22 = Subcontractor.create(name: 'Vital')
s23 = Subcontractor.create(name: 'Weir')
s24 = Subcontractor.create(name: 'Welkin')


cost_excel_file = Roo::Spreadsheet.open('upload_files\Cost Codes 2022-12-13 - Full Cost Schedule.xlsx')
cost_data = cost_excel_file.sheet(0)

cost_data.each_with_index do |row, index|
    next if index == 0
    c = Cost.create(
        cost_code: row[0],
        name: row[1],
        quantity: row[2],
        unit_of_measure: row[3],
        manhours: row[4],
        forecast: row[6],
        spent_to_date: row[10],
        quantity_to_date: row[12],
        manhours_to_date: row[13],
        cost_category_1: row[40],
        cost_category_2: row[41],
    )
    CostSchedule.create(
        cost_id: c.id,
        schedule_type: row[39],
        previous_cost: c.spent_to_date,
        december: row[27],
        january: row[28],
        february: row[29],
        march: row[30],
        april: row[31],
        may: row[32],
        june: row[33],
        july: row[34],
        august: row[35],
        september: row[36],
        october: row[37],
    )
end

puts 'next upload'

activities_excel_file = Roo::Spreadsheet.open('upload_files\November 2022 Schedule - Data.xlsx')
activities_data = activities_excel_file.sheet(0)

activities_data.each_with_index do |row, index|
    next if index == 0
    Activity.create(
        activity_code: row[0],
        name: row[1],
        activity_type: row[2],
        percent_complete: row[3],
        subcontractor_id: row[4],
        location_id:  Location.find_by(name: row[2]) ? Location.find_by(name: row[2]).id : nil,
        cost_id: Cost.find_by(cost_code: row[21]) ? Cost.find_by(cost_code: row[21]).id : nil,
        start_date: row[15],
        end_date: row[16],
        category_1: row[19],
        category_2: row[20],
        completed: row[0]=='Completed' ? true : false,
    )
end






