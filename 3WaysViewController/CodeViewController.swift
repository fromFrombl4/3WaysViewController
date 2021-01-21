//
//  CodeViewController.swift
//  3WaysViewController
//
//  Created by Roman Dod on 1/19/21.
//  Copyright © 2021 Roman Dod. All rights reserved.
//

import UIKit

class CodeViewController: UIViewController {

    private var tableView: UITableView!
    private var label: UILabel!
    var safeArea: UILayoutGuide!

    var array = [
        "1",
        "2",
        "3"
    ]

    private func configureLabel() {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        label.center = CGPoint(x: 50, y: 50)
        label.textAlignment = .left
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            label.topAnchor.constraint(equalTo: safeArea.topAnchor),
            label.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    private func configureTable() {
        let table = UITableView()

        view.addSubview(table)
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            table.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        safeArea = view.layoutMarginsGuide

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")

        configureLabel()
        configureTable()
    }

}
extension CodeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath)
        cell.textLabel?.text = array[indexPath.row]
        return cell
    }

}
