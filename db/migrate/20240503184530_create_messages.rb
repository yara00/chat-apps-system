class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.bigint :number, null: false
      t.text  :body, null: false 
      t.bigint :chat_id, null: false

      t.timestamps
    end

    add_index :messages, [:chat_id, :number], unique: true 

  end
end
