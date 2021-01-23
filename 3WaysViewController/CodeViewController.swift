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

    public var code: Code?
    var array = [
        1,
        2,
        3
    ]

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        label.text = code?.label
    }

    private func configureLabel() {
        label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Label"
        view.addSubview(label)

        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 50),
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            label.heightAnchor.constraint(equalToConstant: 30)
        ])
    }

    private func configureTable() {
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.tableFooterView = UIView()
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 50),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        configureLabel()
        configureTable()

        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "SoryboardTableViewCell", bundle: nil), forCellReuseIdentifier: "SoryboardTableViewCell")
    }

}
extension CodeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "SoryboardTableViewCell", for: indexPath) as? SoryboardTableViewCell else {
            return UITableViewCell()
        }
        cell.configure(with: array[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }

}
