json.user do
  json.email @user.email
  json.username @user.username
  json.access_token @user.access_token
  json.message "Poop!"
end