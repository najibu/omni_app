Rails.application.config.middleware.use. Omniauth::Builder do 
	provider :twitter, 'kXf7fQItjytbIknBr1cg4qHT0', 'cEj0P1qnrN4Jarrs62A9AM0oy7xSTBUt6ukVi9mS2B7Cr6MbhQ' 
	provider :facebook, '158625207908062', '7089b57d557a612f9d9aa46a60c32d59'
	provider :github, 'ba565edafed0e12f5f9f', 'f292ac1365597c6a6ee5ea5b8448fb813b34115e' 
end