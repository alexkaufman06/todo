require('rspec')
require('todo')

describe(Todo) do
  before() do
    Todo.clear()
  end

  describe("#description") do
    it("lets you give a todo description") do
      todo = Todo.new("Practice piano.")
      expect(todo.description()).to(eq("Practice piano."))
    end
  end

  describe(".all") do
    it("is empty at first") do
      expect(Todo.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("adds a todo to the list of todo tasks") do
      todo = Todo.new("Clean the house.")
      todo.save()
      expect(Todo.all()).to(eq([todo]))
    end
  end

  describe(".clear") do
    it("empties out all of the saved tasks") do
      Todo.new("Clean the house again.").save()
      Todo.clear()
      expect(Todo.all()).to(eq([]))
    end
  end
end
