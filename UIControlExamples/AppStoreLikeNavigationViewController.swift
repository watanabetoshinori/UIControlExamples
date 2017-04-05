//
//  AppStoreLikeNavigationViewController.swift
//  UIControlExamples
//
//  Created by Watanabe Toshinori on 4/5/17.
//  Copyright © 2017 Watanabe Toshinori. All rights reserved.
//

import UIKit

/**
    # Acknowledgments
    
    Apple Developer: Customizing UINavigationBar
    https://developer.apple.com/library/content/samplecode/NavBar/Introduction/Intro.html
 
    Create App Store-like navigation bar
    https://nikolamajcen.com/blog/create-app-store-like-navigation-bar/
 */
class AppStoreLikeNavigationViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }

        navigationController?.navigationBar.showsBorder = false
    }

    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)

        navigationController?.navigationBar.showsBorder = true
    }

    // MARK: - TableView detasource

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "\(Date().description)"

        return cell
    }

}
