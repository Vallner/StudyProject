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
        label.text = "Hello, World!"
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
            tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
       
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        120
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("pressed")
        let nextVC = DetailedViewController()
        nextVC.configure(with: tableViewDataSource.iphones[indexPath.row])
        delegate!.navigationController?.pushViewController(nextVC, animated: true)
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
