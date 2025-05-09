//
//  TableViewCell.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class TableViewCell: UITableViewCell {

    private lazy var nameLabel: UILabel = UILabel()
    private lazy var image: UIImageView = UIImageView()
    private lazy var phoneDescription: String = String()
    private lazy var date: UILabel = UILabel()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupLayout()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func configureCell(phone: Phone, color: UIColor) {
        var backgroundConfiguration = self.defaultBackgroundConfiguration()
        backgroundConfiguration.backgroundInsets = .init(top: 5, leading: 5, bottom: 5, trailing: 5)
        backgroundConfiguration.backgroundColor = color
        
        backgroundConfiguration.cornerRadius = 10
        self.backgroundConfiguration = backgroundConfiguration
     
        
       
        self.date.text = phone.date
        self.date.textColor = .white
        self.date.font = .systemFont(ofSize: 30)
        
        self.image.image = phone.image
        
        self.nameLabel.textColor = .white
        self.nameLabel.text = phone.name
        
        self.phoneDescription = phone.description
        
    }
    func setupLayout() {
        image.contentMode = .scaleAspectFit
        image.frame = CGRect(x: 15, y: -5, width: 120 , height: 110)
        
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        date.translatesAutoresizingMaskIntoConstraints = false
//        image.translatesAutoresizingMaskIntoConstraints = false
        addSubview(image)
        addSubview(nameLabel)
        addSubview(date)
        NSLayoutConstraint.activate([
//            image.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
//            image.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
//            image.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 200),
          
//            image.trailingAnchor.constraint(equalTo: nameLabel.leadingAnchor),
//            image.widthAnchor.constraint(equalToConstant: 50),
//            image.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            date.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            date.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
           
            
            
            nameLabel.leadingAnchor.constraint(equalTo: image.trailingAnchor, constant: 20),
            nameLabel.topAnchor.constraint(equalTo: date.bottomAnchor, constant: 10),
            
            ])
        
    }
    
}
extension TableViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
