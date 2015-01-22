class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :nome
      t.string :lider_tivit
      t.string :empresa
      t.string :pep
      t.string :lider_ict
      t.date :data_inicio
      t.date :data_pre
      t.date :data_teste
      t.date :data_homologacao
      t.date :data_pro
      t.integer :horas_swf
      t.integer :horas_sf
      t.integer :total_horas
      t.integer :faturado_sf
      t.integer :faturado_swf
      t.integer :horas_consumidas
      t.integer :avanco_fisico
      t.integer :desvio
      t.boolean :processo

      t.timestamps
    end
  end
end
