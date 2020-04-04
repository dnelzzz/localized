json.array! @users.each do |user|
  json.name user.name
  json.xp user.xp
end