class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :message
      t.text :message_detail

      t.timestamps
    end
  end
end
