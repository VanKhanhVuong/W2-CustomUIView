//
//  ViewController.swift
//  W2-CustomUIView
//
//  Created by Văn Khánh Vương on 26/03/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var testTableView:  UITableView!
    var firstNameArray: Array = ["Khánh Vương","Tuấn Nghĩa","Ngọc Khang","Bá Mão","Quốc Bảo","Trung Phụng","Khanh Nhỏ"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testTableView.delegate = self
        testTableView.dataSource = self
    }
}
extension ViewController: UITableViewDataSource, UITableViewDelegate{
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = MyCustomView.init(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        header.configureview(title: "Header", subtitle: "This is header")
        return header
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = MyCustomView.init(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 100))
        footer.configureview(title: "Footer", subtitle: "")
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 100.0
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstNameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = firstNameArray[indexPath.row]
        return cell
    }
    
    
}
