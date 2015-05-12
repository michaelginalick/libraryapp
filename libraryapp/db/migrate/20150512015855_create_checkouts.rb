class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|

      t.integer     :user_id
      t.integer     :book_id
      t.datetime    :start_date
      t.datetime    :due_date

      t.timestamps
    end
  end
end
