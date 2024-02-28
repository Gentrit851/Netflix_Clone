//
//  HomeViewController.swift
//  Netflix_Clone
//
//  Created by Gentrit on 26.2.24.
//

import UIKit

class HomeViewController: UIViewController {
    @IBOutlet var homeFeedTable: UITableView!
//    private let homeFeedTable: UITableView = {
//        let table = UITableView()
//        table.register(UITableView.self, forCellReuseIdentifier: "cell")
//        return table
//    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        homeFeedTable.frame = .zero
        view.addSubview(homeFeedTable)
        // Do any additional setup after loading the view.

        homeFeedTable.delegate = self
        homeFeedTable.dataSource = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews();
        homeFeedTable.frame = view.bounds
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

extension HomeViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 20
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CollectionViewTableViewCell", for: indexPath) as? CollectionViewTableViewCell else {
            return UITableViewCell()
        }
        return cell
    }
    
    
}
