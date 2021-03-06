class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :name
      t.references :user, foreign_key: true
      t.boolean :is_complete
      t.timestamps
    end
  end
end
