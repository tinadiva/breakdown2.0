json.extract! project, :id, :name, :description, :deadline, :reminder, :reward, :milestone, :created_at, :updated_at
json.url project_url(project, format: :json)
