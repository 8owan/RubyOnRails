json.extract! lecture, :id, :contents, :attachments, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
