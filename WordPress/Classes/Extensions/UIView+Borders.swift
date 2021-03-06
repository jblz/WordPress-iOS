extension UIView {
    func addTopBorder(withColor bgColor: UIColor) {
        let borderView = makeBorderView(withColor: bgColor)

        NSLayoutConstraint.activate([
            borderView.heightAnchor.constraint(equalToConstant: 1.0 / UIScreen.main.scale),
            borderView.topAnchor.constraint(equalTo: topAnchor),
            borderView.centerXAnchor.constraint(equalTo: centerXAnchor),
            borderView.widthAnchor.constraint(equalTo: widthAnchor)
            ])
    }

    func addBottomBorder(withColor bgColor: UIColor) {
        let borderView = makeBorderView(withColor: bgColor)

        NSLayoutConstraint.activate([
            borderView.heightAnchor.constraint(equalToConstant: 1.0 / UIScreen.main.scale),
            borderView.bottomAnchor.constraint(equalTo: bottomAnchor),
            borderView.centerXAnchor.constraint(equalTo: centerXAnchor),
            borderView.widthAnchor.constraint(equalTo: widthAnchor)
            ])
    }

    private func makeBorderView(withColor: UIColor) -> UIView {
        let borderView = UIView()
        borderView.backgroundColor = withColor
        borderView.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(borderView)

        return borderView
    }
}
