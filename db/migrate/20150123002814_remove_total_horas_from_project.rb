class RemoveTotalHorasFromProject < ActiveRecord::Migration
  def change
    remove_column :projects, :total_horas, :integer
  end
end
