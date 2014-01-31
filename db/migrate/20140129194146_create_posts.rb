class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :content
      t.references :author, polymorphic: true
      t.references :owner, polymorphic: true

      t.timestamps
    end
  end
end
