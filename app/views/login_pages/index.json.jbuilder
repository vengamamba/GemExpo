json.array!(@login_pages) do |login_page|
  json.extract! login_page, :id
  json.url login_page_url(login_page, format: :json)
end
