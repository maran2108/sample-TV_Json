//
//  ViewController.swift
//  JSonTV1
//
//  Created by Rifluxyss on 08/02/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var myTableView: UITableView!
    var x = [AllData]()
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.delegate = self
        myTableView.dataSource = self
        jsonDownload {
            print("Finished")
            self.myTableView.reloadData()
        }
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print("-----\(x.count)------")
        return x.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "t1") as! tvc
        print("=====>\(indexPath.row)")
        cell.idLabel.text = String(x[indexPath.row].id)
        cell.nameLabel.text = x[indexPath.row].name
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Datas...."
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return "End....!"
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "sc") as! SecondViewController
        vc.id_data = x[indexPath.row].id
        vc.name_data = x[indexPath.row].name
        vc.userName_data = x[indexPath.row].username
        vc.email_data = x[indexPath.row].email
        vc.phone_data = x[indexPath.row].phone
        vc.website_data = x[indexPath.row].website
        
        // address details
        vc.street_data = x[indexPath.row].address.street
        vc.suite_data = x[indexPath.row].address.suite
        vc.city_data = x[indexPath.row].address.city
        vc.zipcode_data = x[indexPath.row].address.zipcode
        
        // geo
        vc.lat_data = x[indexPath.row].address.geo.lat
        vc.lng_data = x[indexPath.row].address.geo.lng
        
        // company details
        vc.companyName_data = x[indexPath.row].company.name
        vc.companyPharse_data = x[indexPath.row].company.catchPhrase
        vc.companyBs_data = x[indexPath.row].company.bs         

        navigationController?.pushViewController(vc, animated: true)
    }
    
    func jsonDownload(completed: @escaping () -> ()){
        let url = URL(string: "https://jsonplaceholder.typicode.com/users#")
        URLSession.shared.dataTask(with: url!) { (data, _, error) in
            if let data = data{
                do {
                    self.x = try JSONDecoder().decode([AllData].self, from: data)
                    DispatchQueue.main.async {
                        completed()
                    }
                }
                catch {
                    print("JSON error\(error)")
                }
            }
        }.resume()
    }
}

