import UIKit

protocol DropdownViewDelegate: AnyObject {
    func dropdownViewTapped(_ dropdownView: DropdownView)
}

class DropdownView: UIView {
    
    weak var delegate: DropdownViewDelegate?
    
    private let titleLabel = UILabel()
    private let arrowImageView = UIImageView(image: UIImage(systemName: "chevron.down"))
    private let arrowSuperView = UIView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    
    private func setupView() {
        backgroundColor = .white
        layer.cornerRadius = 4
        layer.borderColor = Colors.dmartGreen?.cgColor
        layer.borderWidth = 1
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap))
        addGestureRecognizer(tapGesture)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textAlignment = .center
        addSubview(titleLabel)
        
        arrowSuperView.translatesAutoresizingMaskIntoConstraints = false
        arrowImageView.translatesAutoresizingMaskIntoConstraints = false
        arrowSuperView.addSubview(arrowImageView)
        addSubview(arrowSuperView)
        
        arrowImageView.tintColor = .white // Set the background color of the arrow image
        arrowSuperView.backgroundColor = Colors.dmartGreen
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrowSuperView.topAnchor.constraint(equalTo: topAnchor,constant: 0),
            arrowSuperView.bottomAnchor.constraint(equalTo: bottomAnchor,constant: 0),
            arrowSuperView.widthAnchor.constraint(equalTo: widthAnchor,multiplier: 0.3),
            arrowSuperView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0),
            arrowImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            arrowImageView.centerXAnchor.constraint(equalTo: arrowSuperView.centerXAnchor)
        ])
        
        titleLabel.text = "1L"
    }
    
    @objc private func handleTap() {
        delegate?.dropdownViewTapped(self)
    }
    
    func setTitle(_ title: String) {
        titleLabel.text = title
    }
}

