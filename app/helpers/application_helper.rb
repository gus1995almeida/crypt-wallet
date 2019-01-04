module ApplicationHelper
    
    def time_br(time_us)
       time_us.strftime("%d/%m/%Y") 
    end
    
    def ambiente_rails
       if Rails.env.development?
           "Desenvolvimento"
        elsif Rails.env.production?
            "Produção"
        else
            "Teste"
        end
    end
end
