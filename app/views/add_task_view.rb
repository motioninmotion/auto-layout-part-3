class AddTaskView < UIView
  attr_accessor :layout_guide

  def layout_views
    @title_label.translatesAutoresizingMaskIntoConstraints = false
    @notes_label.translatesAutoresizingMaskIntoConstraints = false

    # @title_label.right = self.right * 1.0 + -20
    # @title_label.left = self.left * 1.0 + 20
    addConstraints(
      NSLayoutConstraint.constraintsWithVisualFormat(
        '|-padding-[title_label]-padding-|',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: { 'padding' => 20 },
        views: { 'title_label' => @title_label }
      )
    )

    addConstraints(
      NSLayoutConstraint.constraintsWithVisualFormat(
        '|-padding-[notes_label]-padding-|',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: { 'padding' => 20 },
        views: { 'notes_label' => @notes_label }
      )
    )

    addConstraints(
      NSLayoutConstraint.constraintsWithVisualFormat(
        'V:[top_layout_guide]-padding-[title_label]-padding-[notes_label]',
        options: NSLayoutFormatDirectionLeadingToTrailing,
        metrics: { 'padding' => 20 },
        views: { 'top_layout_guide' => layout_guide, 'title_label' => @title_label, 'notes_label' => @notes_label }
      )
    )
  end

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
