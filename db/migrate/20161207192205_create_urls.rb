class CreateUrls < ActiveRecord::Migration[5.0]
  def change
    create_table :urls do |t|
      t.string :long_url
      t.string :short_url
      t.integer :visits,:default => 0
      t.timestamps
    end
  end
end
