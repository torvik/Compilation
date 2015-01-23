class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.date :data_solicitacao
      t.date :data_pre
      t.date :data_pro
      t.string :status
      t.date :data_alteracao
      t.boolean :recompilado
      t.text :observation
      t.string :environment
      t.boolean :oficializar
      t.date :data_oficializacao
      t.references :project, index: true
      t.references :source, index: true

      t.timestamps
    end
  end
end
