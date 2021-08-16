class CreateV2Pessoas < ActiveRecord::Migration[6.1]
  def change
    create_table :v2_pessoas do |t|
      t.string :nome
      t.string :idade
      t.string :email

      t.timestamps
    end
  end
end
