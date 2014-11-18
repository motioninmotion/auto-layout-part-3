class TodoListViewController < UIViewController
  def loadView
    self.title = "Tasks"
    self.view = UIView.new
    view.backgroundColor = UIColor.whiteColor

    navigationItem.rightBarButtonItem = UIBarButtonItem.alloc.initWithBarButtonSystemItem(
      UIBarButtonSystemItemAdd,
      target: self,
      action: 'add_task'
    )
  end

  def add_task
    navigationController.pushViewController(AddTaskViewController.new, animated: true)
  end
end
