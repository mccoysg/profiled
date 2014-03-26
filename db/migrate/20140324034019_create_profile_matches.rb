class CreateProfileMatches < ActiveRecord::Migration
  def up
    create_table :matches do |t|
      t.string :name
      t.string :location
      t.timestamps
    end

    def down
      drop_table :matches
    end
  end
end