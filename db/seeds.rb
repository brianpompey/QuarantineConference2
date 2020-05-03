# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Conference.delete_all

Conference.create(:name => "RubyCon", :min_donation => 25, :date => "2020-06-05", :time => "16:00", :keynote => "Yukihiro Matsumoto", :category => "Ruby")

Conference.create(:name => "RailsAThon", :min_donation => 35, :date => "2020-08-05", :time => "12:00", :keynote => "David Heinemeier Hansson", :category => "Ruby")

Conference.create(:name => "We Love Python!!", :min_donation => 0, :date => "2020-09-02", :time => "13:00", :keynote => "Guido van Rossum", :category => "Python")

Conference.create(:name => "Javaaaaaascript!", :min_donation => 50, :date => "2020-11-03", :time => "10:00", :keynote => "Brendan Eich", :category => "Javascript")

Conference.create(:name => "React to THIS", :min_donation => 25, :date => "2020-12-15", :time => "14:00", :keynote => "Jordan Walke", :category => "Javascript")

Conference.create(:name => "Python Partay!", :min_donation => 25, :date => "2020-09-15", :time => "17:00", :keynote => "Alex Martelli", :category => "Python")

Conference.create(:name => "Ruby at Flatiron", :min_donation => 0, :date => "2020-12-05", :time => "12:30", :keynote => "Avi Flombaum", :category => "Ruby")

Conference.create(:name => "NodeCON", :min_donation => 40, :date => "2020-05-02", :time => "12:30", :keynote => "Ryan Dahl", :category => "Javascript")

Conference.create(:name => "All About Sinatra", :min_donation => 50, :date => "2020-11-15", :time => "16:30", :keynote => "Blake Mizerany", :category => "Ruby")

Conference.create(:name => "REDUX", :min_donation => 40, :date => "2020-10-15", :time => "15:00", :keynote => "Dan Abramov", :category => "Javascript")


Workshop.delete_all

Workshop.create(:name => "Matz", :description => "OO Ruby Tic Tac Toe", :conference_id => 1)

Workshop.create(:name => "Jason Fried", :description => "Rails Authentication", :conference_id => 2)

Workshop.create(:name => "Damien P. George", :description => "MicroPython", :conference_id => 3)

Workshop.create(:name => "Douglas Crockford", :description => "JSON", :conference_id => 4)

Workshop.create(:name => "Mark Zuckerberg", :description => "React Native Benefits", :conference_id => 5)

Workshop.create(:name => "Robert Bradshaw", :description => "What Cython is All About", :conference_id => 6)

Workshop.create(:name => "Avi", :description => "Getting Started with Ruby", :conference_id => 7)

Workshop.create(:name => "Timothy J. Fontaine", :description => "Leading Node", :conference_id => 8)

Workshop.create(:name => "Trygve Reenskaug", :description => "Sinatra MVC Structure", :conference_id => 9)

Workshop.create(:name => "Andrew Clark", :description => "All the Angles of Angular", :conference_id => 10)

Workshop.create(:name => "Sandi Metz", :description => "Practical Object-oriented Design", :conference_id => 1)

Workshop.create(:name => "Michael Hartl", :description => "Learn Web Development with Ruby", :conference_id => 2)

Workshop.create(:name => "Eric Matthes", :description => "Python Crash Course", :conference_id => 3)

Workshop.create(:name => "Marijn Haverbeke", :description => "Eloquent Javascript", :conference_id => 4)

Workshop.create(:name => "Azat Mardan", :description => "React Quickly", :conference_id => 5)

Workshop.create(:name => "Al Sweigart", :description => "Automate the boring stuff", :conference_id => 6)

Workshop.create(:name => "Linda Liukas", :description => "Hello Ruby", :conference_id => 7)

Workshop.create(:name => "Mario Casciaro", :description => "Node.js Design Patterns", :conference_id => 8)

Workshop.create(:name => "Alan Harris", :description => "Sinatra Up and Running", :conference_id => 9)

Workshop.create(:name => "Zac Gordon", :description => "React Explained", :conference_id => 10)

User.delete_all

User.create(:email => "admin@admin.com", :password => "administrator", :name => "Admin", :admin => true)