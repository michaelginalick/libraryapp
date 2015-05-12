class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|

      t.string :title
      t.string :author
      t.string :genre
      t.boolean :checked_out?, :default => false

      t.timestamps
    end
  end
end
