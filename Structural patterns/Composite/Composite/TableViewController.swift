//
//  TableViewController.swift
//  Composite
//
//  Created by mac on 26.09.2023.
//

import UIKit

class TableViewController: UITableViewController {

    //MARK: Variables

    var currentFolder = Folder(name: "Main")

    //MARK: - Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    //MARK: - @IBAction

    @IBAction func addFileBarButton(_ sender: Any) {
        currentFolder.addComponent(c: File(name: "New file"))
        tableView.reloadData()
    }

    @IBAction func addFolderBarButton(_ sender: Any) {
        currentFolder.addComponent(c: Folder(name: "New folder"))
        tableView.reloadData()
    }

    // MARK: - Table

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return currentFolder.contentCount()
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        guard let compose = currentFolder.showContent() as? [ComposeProtocol] else { fatalError() }

        let item = compose[indexPath.row]

        cell.textLabel?.text = item.name
        cell.detailTextLabel?.text = item is Folder ? "Folder" : "File"
        cell.imageView?.image = item is Folder ? UIImage(named: "folder") : UIImage(named: "file")

        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}
