class CreateInboundMessages < ActiveRecord::Migration
  def change
    create_table :inbound_messages, {id: false} do |t|
      t.string :notification_id, limit: 36, null: false
      t.string :message_id, limit: 36, null: false
      t.string :account_id, limit: 36, null: false
      t.text :message_text, null: false
      t.string :from, limit: 20, null: false
      t.string :to, limit: 20, null: false

      t.timestamps
    end

    add_index :inbound_messages, [:notification_id, :message_id], unique: true
    add_index :inbound_messages, :account_id
    add_index :inbound_messages, :to
  end
end
