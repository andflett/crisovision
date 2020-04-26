class Type < ActiveRecord::Migration[6.0]
  def change
    rename_column :scores, :perfomance_id, :performance_id
  end
end
