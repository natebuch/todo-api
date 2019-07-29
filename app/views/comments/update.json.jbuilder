json.comment do
  json.id @comment.id
  json.text @comment.text
  json.todo_id @comment.todo_id
  json.user_id @comment.user.id
  json.user_first_name @comment.user.first_name
  json.user_last_name @comment.user.last_name
  json.status @comment.status
end