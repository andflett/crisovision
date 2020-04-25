class CreateModels < ActiveRecord::Migration[6.0]
  def change

    create_table :scores do |t|
      # cannot vote for yourself
      t.references :user
      t.references :perfomance
      t.integer :song
      t.integer :outfit
      t.integer :backdrop
      t.timestamps null: false
    end

    create_table :performances do |t|
      t.references :user
      t.string :title
      t.string :link
      t.timestamps null: false
    end

  end
end
