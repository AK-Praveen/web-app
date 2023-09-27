json.extract! book, :id, :name, :published_year, :author, :created_at, :updated_at
json.url book_url(book, format: :json)
