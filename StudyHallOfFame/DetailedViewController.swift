//
//  DetailedViewController.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class DetailedViewController: UIViewController {
    
   
    private lazy var imageView:UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    private lazy var nameLabel:UILabel = {
        let nameLabel = UILabel()
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    private lazy var phoneDescription: UITextView = {
        let phoneDescription = UITextView()
        phoneDescription.translatesAutoresizingMaskIntoConstraints = false
        return phoneDescription
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        phoneDescription.isEditable = false
        
       
        view.addSubview(nameLabel)
        view.addSubview(phoneDescription)
        view.addSubview(imageView)
        NSLayoutConstraint.activate([
            nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
//
            imageView.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 20),
            imageView.bottomAnchor.constraint(equalTo: phoneDescription.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 400),
            imageView.heightAnchor.constraint(equalToConstant: 400),
            
           
            phoneDescription.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            phoneDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            phoneDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            phoneDescription.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20)
        ])
        // Do any additional setup after loading the view.
    }
    func configure(with phone: Phone) {
        imageView.image = phone.image
        imageView.contentMode = .scaleAspectFit
//        let targetSize = CGFloat(400)
//        let scaledImage = UIGraphicsImageRenderer(size: CGSize(width: targetSize, height: targetSize)).image { _ in
//            imageView.image?.draw(in: CGRect(origin: .zero, size: CGSize(width: targetSize, height: targetSize)))
//        }
//        imageView.image = scaledImage
        nameLabel.text = phone.name
        
        phoneDescription.text = phone.description
        phoneDescription.font = UIFont.systemFont(ofSize: 17)
//        var attachment = NSTextAttachment()
//        attachment = imageView
//        let attachmentString = NSAttributedString(attachment: attachment)
//        phoneDescription.textStorage.insert(attachmentString, at: 0)
        
        
    }
  
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
