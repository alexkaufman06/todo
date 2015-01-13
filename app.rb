require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/todo")

get("/") do
  @todo = Todo.all()
  erb(:index)
end

post("/todo") do
  @description = params.fetch("description")
  todo = Todo.new(@description)
  todo.save()
  erb(:success)
end

post("/") do
  @todo = Todo.clear()
  erb(:index)
end
