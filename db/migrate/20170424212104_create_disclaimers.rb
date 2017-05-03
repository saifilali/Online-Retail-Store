class CreateDisclaimers < ActiveRecord::Migration
  def change
    create_table :disclaimers do |t|
      t.string :message
      t.string :page

      t.timestamps null: false
    end
  end
end
