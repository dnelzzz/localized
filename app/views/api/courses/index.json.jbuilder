json.array! @courses.each do |course|
  json.id course.id
  json.name course.name
  json.image_url course.image_url
end