//
//  DMsViewController.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/5/21.
//

import UIKit

class DMsViewController: UIViewController {
    let names = ["001-man","002-boy","003-chief","004-gardener","005-gardener","006-girl","007-man","008-man","009-man","010-man","011-trainer"]

    @IBOutlet var tableData: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
extension DMsViewController: UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 100.0
    }
    
}

extension DMsViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.lbl_name.text = names[indexPath.row]
        cell.img_View.image = UIImage(named: names[indexPath.row])
        return cell
    }
    
    
    
    
}
