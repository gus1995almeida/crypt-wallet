namespace :dev do
  desc "Configurar o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?     #Precisa se colocado para evitar em apagar o bando de dados em ambiente de produção, por exemplo
       puts %x(rake db:drop)
       puts %x(rake db:create)
       puts %x(rake db:migrate)
       puts %x(rake dev:add_mining_type)
       puts %x(rake db:seed)
    else
      puts 'Você não está em ambiente de desenvolvimento.'
    end
  end
  
  desc "Cadastro dos tipos de mineração"
  task add_mining_type: :environment do
    mining_types = [
      {description: "Proof of Work", acronym: "PoW"},
      {description: "Proof of Stake", acronym: "PoS"},
      {description: "Proof of Capacity", acronym: "PoC"}
      ]
    
    mining_types.each do |type|
      MiningType.find_or_create_by!(type) 
    end
  end
end
