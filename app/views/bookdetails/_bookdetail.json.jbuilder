json.extract! bookdetail, :id, :name, :email, :amount, :created_at, :updated_at
json.url bookdetail_url(bookdetail, format: :json)
