# @title_label.left = self.left * 1.0 + 20
addConstraint(
  NSLayoutConstraint.constraintWithItem(
    @title_label,
    attribute: NSLayoutAttributeLeft,
    relatedBy: NSLayoutRelationEqual,
    toItem: self,
    attribute: NSLayoutAttributeLeft,
    multiplier: 1.0,
    constant: 20
  )
)

NSLayoutAttributeLeft
                 Right
                 Top
                 Bottom
                 Leading
                 Trailing
                 Width
                 Height
                 CenterX
                 CenterY
                 Baseline
