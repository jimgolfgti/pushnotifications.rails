# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
delivered = (1..50).map { |i| { message_id: SecureRandom.uuid, delivered_at: Time.current.advance(minutes: -i) } }
failed = (1..50).map { |i| { message_id: SecureRandom.uuid, failed_at: Time.current.advance(minutes: -i) } }
OutboundMessage.create delivered.concat failed
    
