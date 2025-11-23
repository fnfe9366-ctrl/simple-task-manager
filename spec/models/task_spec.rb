require 'rails_helper'

RSpec.describe Task, type: :model do
  describe "validations" do
    it "is valid with title and due_date" do
      task = Task.new(title: "Test Task", due_date: Date.tomorrow)
      expect(task).to be_valid
    end

    it "is invalid without title" do
      task = Task.new(title: nil, due_date: Date.tomorrow)
      expect(task).to be_invalid
    end

    it "is invalid without due_date" do
      task = Task.new(title: "Test Task", due_date: nil)
      expect(task).to be_invalid
    end
  end

  describe "scopes" do
    let!(:completed_task) { Task.create!(title: "Completed", due_date: Date.tomorrow, completed: true) }
    let!(:incomplete_task) { Task.create!(title: "Incomplete", due_date: Date.tomorrow, completed: false) }

    it "returns completed tasks" do
      expect(Task.completed).to include(completed_task)
    end

    it "returns incomplete tasks" do
      expect(Task.incomplete).to include(incomplete_task)
    end
  end
end