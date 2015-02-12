# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#

######settings table
if ActiveRecord::Base.connection.table_exists? 'settings'
  ActiveRecord::Base.connection.execute 'ALTER SEQUENCE settings_id_seq RESTART WITH 1;'
  [{var: "enable_changes", value: true}, {var: "enable_uploads", value: false}].each do |data|
    Setting.create(data)
  end
end  
######settings

######countries table
if ActiveRecord::Base.connection.table_exists? 'countries'
  ActiveRecord::Base.connection.execute 'ALTER SEQUENCE countries_id_seq RESTART WITH 1;'
  [{id: 1, name: "Afghanistan"}, {id: 2, name: "Australia"}, {id: 3, name: "Bangladesh"}, {id: 4, name: "England"},
  {id: 5, name: "India"}, {id: 6, name: "Ireland"}, {id: 7, name: "New Zealand"}, {id: 8, name: "Pakistan"}, {id: 9, name: "Scotland"}, {id: 10, name: "South Africa"}, {id: 11, name: "Sri Lanka"}, {id: 12, name: "West Indies"}, {id: 13, name: "UAE"}, {id: 14, name: "Zimbabwe"}].each do |data|
    Country.create(data)
  end
end  
######countries

######players table
if ActiveRecord::Base.connection.table_exists? 'players'
  ActiveRecord::Base.connection.execute 'ALTER SEQUENCE players_id_seq RESTART WITH 1;'
  ActiveRecord::Base.connection.execute 'delete from players;'
  [{name: "Usman Ghani", player_category: "batsman", country_id: 1},
   {name: "Nawroz Khan Mangal", player_category: "batsman", country_id: 1},
   {name: "Mohammad Asghar Stanikzai", player_category: "batsman", country_id: 1},
   {name: "Najibullah Zadran", player_category: "batsman", country_id: 1},
   {name: "Nasir Jamal Ahmadzai", player_category: "batsman", country_id: 1},
   {name: "Hamid Hassan", player_category: "bowler", country_id: 1},
   {name: "Shapoor Zadran", player_category: "bowler", country_id: 1},
   {name: "Dawlat Zadran", player_category: "bowler", country_id: 1},
   {name: "Aftab Alam", player_category: "bowler", country_id: 1},
   {name: "Mohammad Nabi", player_category: "all-rounder", country_id: 1},
   {name: "Javed Ahmadi", player_category: "all-rounder", country_id: 1},
   {name: "Samiullah Shenwari", player_category: "all-rounder", country_id: 1},
   {name: "Mirwais Ashraf", player_category: "all-rounder", country_id: 1},
   {name: "Gulbadin Naib", player_category: "all-rounder", country_id: 1},
   {name: "Afsar Zazai", player_category: "keeper", country_id: 1},
   {name: "Michael John Clarke", player_category: "batsman", country_id: 2},
   {name: "George John Bailey", player_category: "batsman", country_id: 2},
   {name: "Aaron Finch", player_category: "batsman", country_id: 2},
   {name: "Steven Smith", player_category: "batsman", country_id: 2},
   {name: "David Andrew Warner", player_category: "batsman", country_id: 2},
   {name: "Pat Cummins", player_category: "bowler", country_id: 2},
   {name: "Mitchell Starc", player_category: "bowler", country_id: 2},
   {name: "Xavier Doherty", player_category: "bowler", country_id: 2},
   {name: "Josh Hazlewood", player_category: "bowler", country_id: 2},
   {name: "James Peter Faulkner", player_category: "all-rounder", country_id: 2},
   {name: "Mitchell Guy Johnson", player_category: "all-rounder", country_id: 2},
   {name: "Glenn James Maxwell", player_category: "all-rounder", country_id: 2},
   {name: "Shane Robert Watson", player_category: "all-rounder", country_id: 2},
   {name: "Mitchell Marsh", player_category: "all-rounder", country_id: 2},
   {name: "Bradley James Haddin", player_category: "keeper", country_id: 2},
   {name: "Mohammad Anamul Haque Bijoy", player_category: "batsman", country_id: 3},
   {name: "Mominul Haque", player_category: "batsman", country_id: 3},
   {name: "Tamim Iqbal Khan", player_category: "batsman", country_id: 3},
   {name: "Al-Amin Hossain", player_category: "bowler", country_id: 3},
   {name: "Arafat Sunny", player_category: "bowler", country_id: 3},
   {name: "Mohammad Rubel Hossain", player_category: "bowler", country_id: 3},
   {name: "Taijul Islam", player_category: "bowler", country_id: 3},
   {name: "Taskin Ahmed", player_category: "bowler", country_id: 3},
   {name: "Mashrafe Bin Mortaza", player_category: "all-rounder", country_id: 3},
   {name: "Mohammad Mahmudullah", player_category: "all-rounder", country_id: 3},
   {name: "Nasir Hossain", player_category: "all-rounder", country_id: 3},
   {name: "Sabbir Rahman", player_category: "all-rounder", country_id: 3},
   {name: "Shakib Al Hasan", player_category: "all-rounder", country_id: 3},
   {name: "Soumya Sarkar", player_category: "all-rounder", country_id: 3},
   {name: "Mohammad Mushfiqur Rahim", player_category: "keeper", country_id: 3},
   {name: "Gary Ballance", player_category: "batsman", country_id: 4},
   {name: "Ian Ronald Bell", player_category: "batsman", country_id: 4},
   {name: "Alex Hales", player_category: "batsman", country_id: 4},
   {name: "Eoin Joseph Gerard Morgan", player_category: "batsman", country_id: 4},
   {name: "Joseph Edward Root", player_category: "batsman", country_id: 4},
   {name: "James Taylor", player_category: "batsman", country_id: 4},
   {name: "James Michael Anderson", player_category: "bowler", country_id: 4},
   {name: "Steven Finn", player_category: "bowler", country_id: 4},
   {name: "James Tredwell", player_category: "all-rounder", country_id: 4},
   {name: "Moeen Ali", player_category: "all-rounder", country_id: 4},
   {name: "Ravinder Singh Bopara", player_category: "all-rounder", country_id: 4},
   {name: "Stuart Broad", player_category: "all-rounder", country_id: 4},
   {name: "Chris Jordan", player_category: "all-rounder", country_id: 4},
   {name: "Christopher Roger Woakes", player_category: "all-rounder", country_id: 4},
   {name: "Jos Buttler", player_category: "keeper", country_id: 4},
   {name: "Shikhar Dhawan", player_category: "batsman", country_id: 5},
   {name: "Rohit Gurunath Sharma", player_category: "batsman", country_id: 5},
   {name: "Ajinkya Rahane", player_category: "batsman", country_id: 5},
   {name: "Virat Kohli", player_category: "batsman", country_id: 5},
   {name: "Suresh Kumar Raina", player_category: "batsman", country_id: 5},
   {name: "Ambati Thirupathi Rayudu", player_category: "batsman", country_id: 5},
   {name: "Mohit Mahipal Sharma", player_category: "bowler", country_id: 5},
   {name: "Ravichandran Ashwin", player_category: "bowler", country_id: 5},
   {name: "Mohammed Shami Ahmed", player_category: "all-rounder", country_id: 5},
   {name: "Umesh Yadav", player_category: "all-rounder", country_id: 5},
   {name: "Ravindrasinh Anirudhsinh Jadeja", player_category: "all-rounder", country_id: 5},
   {name: "Axar Rajeshbhai Patel", player_category: "all-rounder", country_id: 5},
   {name: "Stuart Binny", player_category: "all-rounder", country_id: 5},
   {name: "Bhuvneshwar Kumar", player_category: "all-rounder", country_id: 5},
   {name: "Mahendra Singh Dhoni", player_category: "keeper", country_id: 5},
   {name: "Edmund Christopher Joyce", player_category: "batsman", country_id: 6},
   {name: "William Thomas Stuart Porterfield", player_category: "batsman", country_id: 6},
   {name: "Niall John O'Brien", player_category: "batsman", country_id: 6},
   {name: "Max Christian Sorensen", player_category: "bowler", country_id: 6},
   {name: "Andrew Robert McBrine", player_category: "bowler", country_id: 6},
   {name: "Peter Karl David Chase", player_category: "bowler", country_id: 6},
   {name: "George Dockrell", player_category: "bowler", country_id: 6},
   {name: "Craig Young", player_category: "bowler", country_id: 6},
   {name: "John Francis Mooney", player_category: "all-rounder", country_id: 6},
   {name: "Andrew Balbirnie", player_category: "all-rounder", country_id: 6},
   {name: "Alex Richard Cusack", player_category: "all-rounder", country_id: 6},
   {name: "Kevin Joseph O'Brien", player_category: "all-rounder", country_id: 6},
   {name: "Paul Robert Stirling", player_category: "all-rounder", country_id: 6},
   {name: "Stuart Thompson", player_category: "all-rounder", country_id: 6},
   {name: "Gary Craig Wilson", player_category: "keeper", country_id: 6},
   {name: "Brendon Barrie McCullum", player_category: "batsman", country_id: 7},
   {name: "Grant David Elliott", player_category: "batsman", country_id: 7},
   {name: "Martin James Guptill", player_category: "batsman", country_id: 7},
   {name: "Thomas William Maxwell Latham", player_category: "batsman", country_id: 7},
   {name: "Luteru Ross Poutoa Lote Taylor", player_category: "batsman", country_id: 7},
   {name: "Kane Stuart Williamson", player_category: "batsman", country_id: 7},
   {name: "Trent Alexander Boult", player_category: "bowler", country_id: 7},
   {name: "Mitchell John McClenaghan", player_category: "bowler", country_id: 7},
   {name: "Kyle David Mills", player_category: "bowler", country_id: 7},
   {name: "Adam Fraser Milne", player_category: "bowler", country_id: 7},
   {name: "Timothy Grant Southee", player_category: "bowler", country_id: 7},
   {name: "Corey James Anderson", player_category: "all-rounder", country_id: 7},
   {name: "Nathan Leslie McCullum", player_category: "all-rounder", country_id: 7},
   {name: "Daniel Luca Vettori", player_category: "all-rounder", country_id: 7},
   {name: "Luke Ronchi", player_category: "keeper", country_id: 7},
   {name: "Nasir Jamshed", player_category: "batsman", country_id: 8},
   {name: "Ahmed Shehzad", player_category: "batsman", country_id: 8},
   {name: "Misbah-ul-Haq Khan Niazi", player_category: "batsman", country_id: 8},
   {name: "Mohammad Younis Khan", player_category: "batsman", country_id: 8},
   {name: "Sohaib Maqsood", player_category: "batsman", country_id: 8},
   {name: "Umar Akmal", player_category: "batsman", country_id: 8},
   {name: "Sohail Khan", player_category: "bowler", country_id: 8},
   {name: "Mohammad Irfan", player_category: "bowler", country_id: 8},
   {name: "Wahab Riaz", player_category: "bowler", country_id: 8},
   {name: "Rahat Ali", player_category: "bowler", country_id: 8},
   {name: "Ehsan Adil", player_category: "bowler", country_id: 8},
   {name: "Yasir Shah", player_category: "bowler", country_id: 8},
   {name: "Haris Sohail", player_category: "all-rounder", country_id: 8},
   {name: "Sahibzada Mohammad Shahid Khan Afridi", player_category: "all-rounder", country_id: 8},
   {name: "Sarfraz Ahmed", player_category: "keeper", country_id: 8}].each do |data|
    Player.create(data)
  end
end  
######players table
   
