class UpdatePosts < ActiveRecord::Migration[7.0]
  def change
    change_table :posts do |t|
      t.string :author
    end
  end
end
