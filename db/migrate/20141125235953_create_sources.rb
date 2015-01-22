class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string :nome
      t.string :status

      t.timestamps
    end
  end
end
