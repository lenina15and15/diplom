//
//  HomeViewController.swift
//  diplom
//
//  Created Nikolai Masenko on 1/1/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import AppusViper

protocol HomeViewProtocol: class {

}

class HomeViewController: UIViewController, ViperView {
    weak var presenter: HomePresenterProtocol!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    
    func setupUI() {
        self.tableView.register(UINib.init(nibName: "VacancyCell", bundle: nil), forCellReuseIdentifier: "VacancyCell")
    }
}

extension HomeViewController: HomeViewProtocol {

}

extension HomeViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presenter.vacancies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "VacancyCell", for: indexPath) as? VacancyCell else {
            return UITableViewCell.init()
        }
        return cell
    }
}
