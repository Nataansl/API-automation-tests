module EmployeeURL
     include HTTParty
     base_uri 'URL_BASE'
     format :json
     headers 'Content-Type' => 'application/json'
end



# =========================

module EmployeeDinamic
        include HTTParty
        @token = HTTParty.post('URL Da Api de Token',
        base_uri 'URL_BASE'
        format :json
        headers 'Content-Type' => 'application/json', 'Authorization' => "Bearer #{@token['Campo Do Response Que Retorna o Token']}"

end 



# =========================

module EmployeeToken 
        include HTTParty
        base_uri 'URL_BASE'
        format :json
        headers 'Content-Type' => 'application/json', , 'Authorization' => 'Bearer TOKEN'
end         

 