# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  user = User.create(email: "michael@gmail.com", username: "mag42c", password: "mag42c84", password_confirmation: "mag42c84")
  user1 = User.create(email: "test@test.com", username: "mike", password: "mag42c84", password_confirmation: "mag42c84")
  user3 = User.create(email: "tester@test.com", username: "jessie", password: "mag42c84", password_confirmation: "mag42c84")

  book = Book.create(title: "Area 51", author: "Anne Jacobsen", genre: "non-fiction", checked_out?: false)
  book1 = Book.create(title: "The Corrections", author: "Jonathan Frazen", genre: "fiction", checked_out?: false)
  book2 = Book.create(title: "Aftershock", author: "Robert Reich", genre: "non-fiction", checked_out?: false)
  book3 = Book.create(title: "Bleeding Edge", author: "Thomas Pychon", genre: "fiction", checked_out?: false)
  book4 = Book.create(title: "The Naked and the Dead", author: "Norman Mailer", genre: "fiction", checked_out?: false)
  book5 = Book.create(title: "Libra", author: "Don Dello", genre: "fiction", checked_out?: false)

  #checkout = Checkout.create(user_id: 1, book_id: 1, start_date: "4/12/2014", due_date: "5/12/2014")
  #checkout1 = Checkout.create(user_id: 2, book_id: 2, start_date: "4/12/2014", due_date: "5/12/2014")
  #checkout2 = Checkout.create(user_id: 3, book_id: 3, start_date: "4/12/2014", due_date: "5/12/2014")
  #checkout3 = Checkout.create(user_id: 1, book_id: 3, start_date: "4/12/2014", due_date: "5/12/2014")
