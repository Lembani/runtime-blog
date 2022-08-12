class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, index: true, null: false, unique: true
      t.string :photo
      t.string :bio
      t.integer :postsCounter

      t.timestamps
    end
  end
end
