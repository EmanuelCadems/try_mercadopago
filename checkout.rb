puts "hola mundo"

require 'mercadopago.rb'

$mp = MercadoPago.new(ENV['CLIENT_ID'], ENV['CLIENT_SECRET'])

preference_data = {
            "items": [
                {
                    "title": "testCreate",
                    "quantity": 1,
                    "unit_price": 10.2,
                    "currency_id": "ARS"
                }
            ]
        }
preference = $mp.create_preference(preference_data)

puts preference
