class AddAuthors < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.string :author_id
    end
  end
end
