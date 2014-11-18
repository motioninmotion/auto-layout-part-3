class AddTaskViewController < UIViewController
  def loadView
    self.title = "Add Task"
    self.view = AddTaskView.new
    view.layout_guide = self.topLayoutGuide
    view.layout_views
  end
end
