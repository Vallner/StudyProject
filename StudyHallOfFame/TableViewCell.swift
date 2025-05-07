//
//  TableViewCell.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class TableViewCell: UITableViewCell {

    lazy var nameLabel: UILabel = UILabel()
   lazy var image: UIImageView = UIImageView()
   lazy var phoneDescription: String = String()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureCell(phone: Phone) {
        var backgroundConfiguration = self.defaultBackgroundConfiguration()
        backgroundConfiguration.backgroundInsets = .init(top: 5, leading: 5, bottom: 5, trailing: 5)
        backgroundConfiguration.backgroundColor = .systemGray
        backgroundConfiguration.cornerRadius = 10
        self.backgroundConfiguration = backgroundConfiguration
     
        
        self.nameLabel.textColor = .white
        
        self.image.image = phone.image
        self.nameLabel.text = phone.name
        self.phoneDescription = phone.description
        
    }
    func setupLayout() {
        image.contentMode = .scaleAspectFit
        image.frame = CGRect(x: 5, y: 15, width: 70 , height: 70)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
//        image.translatesAutoresizingMaskIntoConstraints = false
        addSubview(image)
        addSubview(nameLabel)
        NSLayoutConstraint.activate([
//            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 200),
          
//            image.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//            image.widthAnchor.constraint(equalToConstant: 50),
//            image.heightAnchor.constraint(equalTo: contentView.heightAnchor),
        
           
            
            
            nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 20),
            
            ])
        
    }
    
}
extension TableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
