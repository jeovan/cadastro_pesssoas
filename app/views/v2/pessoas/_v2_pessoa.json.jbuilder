json.extract! v2_pessoa, :id, :nome, :idade, :email, :created_at, :updated_at
json.url v2_pessoa_url(v2_pessoa, format: :json)
