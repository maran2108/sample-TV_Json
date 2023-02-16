//
//  SecondViewController.swift
//  JSonTV1
//
//  Created by Rifluxyss on 08/02/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var idValue: UILabel!
    @IBOutlet weak var nameValue: UILabel!
    @IBOutlet weak var userNameValue: UILabel!
    @IBOutlet weak var emailValue: UILabel!
    @IBOutlet weak var phoneValue: UILabel!
    @IBOutlet weak var websiteValue: UILabel!
    @IBOutlet weak var streetValue: UILabel!
    @IBOutlet weak var suiteValue: UILabel!
    @IBOutlet weak var cityValue: UILabel!
    @IBOutlet weak var zipcodeValue: UILabel!
    @IBOutlet weak var companyNameValue: UILabel!
    @IBOutlet weak var companyPharseValue: UILabel!
    @IBOutlet weak var companyBsValue: UILabel!
    @IBOutlet weak var latValue: UILabel!
    @IBOutlet weak var lngValue: UILabel!
    
    var id_data = 0
    var name_data = ""
    var userName_data = ""
    var email_data = ""
    var phone_data = ""
    var website_data = ""
    var street_data = ""
    var suite_data = ""
    var city_data = ""
    var zipcode_data = ""
    var companyName_data = ""
    var companyPharse_data = ""
    var companyBs_data = ""
    var lat_data = ""
    var lng_data = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        idValue.text = String(id_data)
        nameValue.text = name_data
        userNameValue.text = userName_data
        emailValue.text = email_data
        phoneValue.text = phone_data
        websiteValue.text = website_data
        streetValue.text = street_data
        suiteValue.text = suite_data
        cityValue.text = city_data
        zipcodeValue.text = zipcode_data
        companyNameValue.text = companyName_data
        companyPharseValue.text = companyPharse_data
        companyBsValue.text = companyBs_data
        latValue.text = lat_data
        lngValue.text = lng_data
        
    }
    

}
