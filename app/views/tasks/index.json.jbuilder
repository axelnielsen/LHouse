json.array!(@tasks) do |task|
  json.extract! task, :id, :name, :inidate, :findate, :inihour, :finhour, :content, :user_id_from, :user_id_to, :perccompleted
  json.url task_url(task, format: :json)
end
