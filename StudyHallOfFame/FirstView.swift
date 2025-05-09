//
//  FirstView.swift
//  StudyHallOfFame
//
//  Created by Danila Savitsky on 4.05.25.
//

import UIKit

class FirstView: UIView, UITableViewDelegate{
    weak var delegate:UIViewController?
    let label = UILabel()
    let tableView = UITableView()
    let tableViewDataSource = TableViewDataSource()
    override init(frame: CGRect) {
        super.init(frame: frame)
      
        tableView.backgroundColor =  .white
        tableView.layer.cornerRadius = 8
        label.text = "Hall of fame"
        label.textColor = .white
        label.font = .systemFont(ofSize: 36)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        addSubview(label)
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = tableViewDataSource
        tableView.delegate = self
        tableView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(tableView)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 32),
            tableView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 16),
            tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("pressed")
        let nextVC = DetailedViewController()
        let backgroundColor: UIColor =  (indexPath.row % 2 == 1) ?  #colorLiteral(red: 0.2051957548, green: 0.465500176, blue: 0.8303315043, alpha: 1) :  #colorLiteral(red: 0.9315242171, green: 0.476580143, blue: 0.7537183166, alpha: 1)
        nextVC.configure(with: tableViewDataSource.iphones[indexPath.row] , color: backgroundColor)
        delegate!.navigationController?.pushViewController(nextVC, animated: true)
        tableView.deselectRow(at: indexPath, animated: true)
    }

//        .addSubview(tableView)
    
    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    

}
