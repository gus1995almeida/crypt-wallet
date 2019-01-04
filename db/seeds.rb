# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

coins = [
            {
                description: "Bitcoin",
                acronym: "BTC",
                url_image: "http://pngimg.com/uploads/bitcoin/bitcoin_PNG47.png",
                mining_type: MiningType.find_by(acronym: 'PoW')
            },
            {
                description: "Ethereum",
                acronym: "ETH",
                url_image: "https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/ETHEREUM-YOUTUBE-PROFILE-PIC.png/600px-ETHEREUM-YOUTUBE-PROFILE-PIC.png",
                mining_type: MiningType.find_by(acronym: 'PoS')
            },
            {
                description: "Dash",
                acronym: "DASH",
                url_image: "https://www.cryptosaurus.cc/ctrl/wp-content/uploads/DASH.png",
                mining_type: MiningType.find_by(acronym: 'PoC')
            }
        ]

coins.each do |coin|
   Coin.find_or_create_by!(coin) 
end