json.extract! page_visitor, :id, :RemoteIP, :Page, :created_at, :updated_at
json.url page_visitor_url(page_visitor, format: :json)