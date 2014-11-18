class AddTaskView < UIView
  def init
    super

    setBackgroundColor UIColor.whiteColor

    @title_label = UILabel.new
    @title_label.text = "Do the dishes"
    @title_label.textAlignment = NSTextAlignmentCenter
    @title_label.textColor = UIColor.greenColor
    @title_label.font = UIFont.boldSystemFontOfSize(36)
    addSubview(@title_label)

    @notes_label = UILabel.new
    @notes_label.text = "Get some dishwashing liquid from the shops, and don't forget the plate in the bedroom"
    @notes_label.numberOfLines = 0
    @notes_label.font = UIFont.systemFontOfSize(14)
    addSubview(@notes_label)

    self
  end
end
