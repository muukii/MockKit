
import UIKit

extension UIView {

  public static func mock(backgroundColor: UIColor) -> UIView {
    let view = UIView()
    view.backgroundColor = backgroundColor
    view.layer.borderWidth = 6
    view.layer.borderColor = UIColor(white: 0, alpha: 0.2).cgColor
    view.layer.masksToBounds = true
    return view
  }

  public static func mock(backgroundColor: UIColor, preferredSize: CGSize) -> UIView {
    let view = IntrinsicSizeView(preferredSize: preferredSize)
    view.backgroundColor = backgroundColor
    view.layer.borderWidth = 6
    view.layer.borderColor = UIColor(white: 0, alpha: 0.2).cgColor
    view.layer.masksToBounds = true
    return view
  }
}

extension UIImageView {

  public static func mock(image: UIImage) -> UIView {
    let view = UIImageView(image: image)
    return view

  }
}

final class IntrinsicSizeView: UIView {

  private let preferredSize: CGSize

  init(
    preferredSize: CGSize
  ) {
    self.preferredSize = preferredSize
    super.init(frame: .zero)
  }

  required init?(
    coder: NSCoder
  ) {
    fatalError("init(coder:) has not been implemented")
  }

  override var intrinsicContentSize: CGSize {
    preferredSize
  }

}

extension UILabel {

  public static func mockSingleline(text: String, textColor: UIColor = .black) -> UILabel {
    let label = UILabel()
    label.font = .preferredFont(forTextStyle: .headline)
    label.textColor = textColor
    label.numberOfLines = 1
    label.text = text
    return label
  }

  public static func mockMultiline(text: String, textColor: UIColor = .black) -> UILabel {
    let label = UILabel()
    label.font = .preferredFont(forTextStyle: .headline)
    label.textColor = textColor
    label.numberOfLines = 0
    label.text = text
    return label
  }
}
