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
    var array = [
        1,
        2,
        3
    ]

    private func configureLabel() {
        let label = UILabel()
        label.frame = CGRect(x: 0, y: 0, width: 300, height: 50)
        label.center = CGPoint(x: 50, y: 50)
        label.textAlignment = .left
        view.addSubview(label)
    }

    private func configureTable() {
        let table = UITableView()
        table.frame = CGRect(x: 0, y: 150, width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        view.addSubview(table)
        NSLayoutConstraint.activate([
            table.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            table.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            table.topAnchor.constraint(equalTo: view.topAnchor),
            table.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
        return cell
    }

}
