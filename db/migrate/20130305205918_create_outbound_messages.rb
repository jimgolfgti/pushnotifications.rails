class CreateOutboundMessages < ActiveRecord::Migration
  def change
    create_table :outbound_messages do |t|
      t.primary_key :id
      t.string :message_id, limit: 36, null: false
      t.datetime :delivered_at
      t.datetime :failed_at

      t.timestamps
    end
    add_index :outbound_messages, :message_id, unique: true
  end
end
