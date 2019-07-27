json.todo do
  json.id @todo.id
  json.name @todo.name
  json.user_id @todo.user.id
  json.user_first_name @todo.user.first_name
  json.user_last_name @todo.user.last_name
  json.is_complete @todo.is_complete
  json.comments @todo.comments
end


