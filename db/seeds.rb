# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Conference.delete_all

Conference.create(:name => "RubyCon", :min_donation => 25, :date => "2020-06-05", :time => "16:00", :keynote => "Yukihiro Matsumoto", :category => "Ruby Programming")

Conference.create(:name => "RailsAThon", :min_donation => 35, :date => "2020-08-05", :time => "12:00", :keynote => "David Heinemeier Hansson", :category => "Ruby on Rails")

Conference.create(:name => "We Love Python!!", :min_donation => 0, :date => "2020-09-02", :time => "13:00", :keynote => "Guido van Rossum", :category => "Python")

Conference.create(:name => "Javaaaaaascript!", :min_donation => 50, :date => "2020-11-03", :time => "10:00", :keynote => "Brendan Eich", :category => "Javascript")

Conference.create(:name => "React to THIS", :min_donation => 25, :date => "2020-12-15", :time => "14:00", :keynote => "Jordan Walke", :category => "React JS")


Workshop.delete_all

Workshop.create(:name => "Matz", :description => "OO Ruby Tic Tac Toe", :confernce_id => 1)

Workshop.create(:name => "Jason Fried", :description => "Rails Authentication", :confernce_id => 2)

Workshop.create(:name => "Damien P. George", :description => "MicroPython", :confernce_id => 3)

Workshop.create(:name => "Douglas Crockford", :description => "JSON", :confernce_id => 4)

Workshop.create(:name => "Mark Zuckerberg", :description => "React Native Benefits", :confernce_id => 5)