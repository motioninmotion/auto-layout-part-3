class AddTaskViewController < UIViewController
  def loadView
    self.title = "Add Task"
    self.view = AddTaskView.new
  end
end
