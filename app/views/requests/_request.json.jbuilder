json.extract! request, :id, :email, :subject, :description, :state, :created_at, :updated_at
json.url request_url(request, format: :json)
