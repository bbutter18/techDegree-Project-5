//
//  PassVIewController.swift
//  iOS AmusementParkPass2
//
//  Created by user on 9/8/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation
import UIKit


var OfficialParkPassCard: Array<Any> = []


class PassViewController: UIViewController {
    
    var nameString = String()
    var passString = String()
    var rideString = String()
    var foodString = String()
    var merchString = String()
    
    @IBOutlet weak var NameLabel: UILabel!
    
    @IBOutlet weak var RideAccessLabel: UILabel!
    @IBOutlet weak var FoodDiscountLabel: UILabel!
    @IBOutlet weak var MerchandiseDiscountLabel: UILabel!
    
    @IBOutlet weak var PassTypeLabel: UILabel!
    @IBOutlet weak var TestResultsLabel: UILabel!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NameLabel.text = nameString
        PassTypeLabel.text = passString
        RideAccessLabel.text = rideString
        FoodDiscountLabel.text = foodString
        MerchandiseDiscountLabel.text = merchString
        

        
    }
    
    
    
    
    
    @IBAction func PressCreatePassButton(_ sender: UIButton) {
        print("Official Park Pass Created")
        
        if pass != nil {
            OfficialParkPassCard = [pass!]
            print(OfficialParkPassCard.count)
        } else if badge != nil {
            OfficialParkPassCard = [badge!]
            print(OfficialParkPassCard.count)
        } else if vendorID != nil {
            OfficialParkPassCard = [vendorID!]
            print(OfficialParkPassCard.count)
        }
    }
    
    
    
    @IBAction func AreaAccessButton(_ sender: UIButton) {
            print("Checking Area Access...")
        
        if pass?.hasParkPass == true {
            TestResultsLabel.text = "You have access to the Amusement Park!"
        }
        
        if badge?.hasEmployeeBadge == true {
            if badge?.employeeType == .FoodService {
                TestResultsLabel.text = "Access to Amusement Park and Kitchen Areas Only"
            } else if badge?.employeeType == .RideService {
                TestResultsLabel.text = "Access to Amusement Park and Ride Control Areas Only "
            } else if badge?.employeeType == .Maintenance {
                TestResultsLabel.text = "Access to Amusement Park, Kitchen, Ride Control and Maintenance Areas Only"
            } else if badge?.employeeType == .ShiftManager {
                TestResultsLabel.text = "Access to Amusement Park, Kitchen, Ride Control, Maintenance and Office Areas Only"
            }
        }
        
        if badge?.employeeType == .ContractEmployee {
            if badge?.projectNumber == .project1001 {
                TestResultsLabel.text = "Access to Amusement Park and Ride Control Areas Only"
            } else if badge?.projectNumber == .project1002 {
                TestResultsLabel.text = "Access to Amusement Park and Ride Control and Maintenance Areas Only"
            } else if badge?.projectNumber == .project1003 {
                TestResultsLabel.text = "Access to Amusement Park, Ride Control, Maintenance, Office and Kitchen Areas Only"
            } else if badge?.projectNumber == .project2001 {
                TestResultsLabel.text = "Access to Office Areas Only"
            } else if badge?.projectNumber == .project2002 {
                TestResultsLabel.text = "Access to Kitchen and Maintenance Areas Only"
            }
        }
        
        if vendorID?.hasEmployeeBadge == false {
            if (vendorID?.vendorCompany)!.rawValue == "Acme" {
                TestResultsLabel.text = "Access to Kitchen Areas Only"
            } else if (vendorID?.vendorCompany)!.rawValue == "NWElectrical" {
                TestResultsLabel.text = "Access to Amusement park, Kitchen, Maintenance, Office and Ride Control Areas Only"
            } else if (vendorID?.vendorCompany)!.rawValue == "Fedex" {
                TestResultsLabel.text = "Access to Maintenance and Office Areas Only"
            } else if (vendorID?.vendorCompany)!.rawValue == "Orkin" {
                TestResultsLabel.text = "Access to Amusmement Areas, Ride Control and Kitchen Areas Only"
            }
        }
    }


    @IBAction func DiscountAccessButton(_ sender: UIButton) {
        
        if badge?.employeeType == .RideService || badge?.employeeType == .Maintenance || badge?.employeeType == .FoodService {
                        print("Checking Employee Discounts...")

                TestResultsLabel.text = "Merchandise is discounted at 25% Off Total Price and Food is discounted at 15% Off Total Price"
        
        } else if badge?.employeeType == .ShiftManager {
           TestResultsLabel.text = "Merchandise and Food are discounted at 25% Off Total Price"
        } else {
            TestResultsLabel.text = "Sorry, no discounts available with this pass"
        }
        
        if pass?.parkAccessType == .VIPGuest || pass?.parkAccessType == .SeasonPassGuest {
                        print("Checking Guest Discounts...")
                    TestResultsLabel.text = "Merchandise is discounted at 20% Off and Food is discounted at 10% off"
        } else if pass?.parkAccessType == .SeniorGuest {
            TestResultsLabel.text = "Merchandise and Food are discounted at 10% Off Total Price"
        } else {
            TestResultsLabel.text = "Sorry, no discounts available with this pass"
        }
        
        if vendorID?.parkAccessType == .Vendor {
            print("Checking vendor discounts...")
            TestResultsLabel.text = "Sorry, no discounts available with this pass"
        }
    }
    
    
    
    @IBAction func RideAccessButton(_ sender: UIButton) {
        
        if pass?.hasParkPass == true {
        print("Checking Guest Ride Access...")
            if pass?.parkAccessType == .VIPGuest || pass?.parkAccessType == .SeniorGuest || pass?.parkAccessType == .SeasonPassGuest {
                TestResultsLabel.text = "You make skip the Ride Lines and you have access to Unlimited Rides!"
            } else {
                TestResultsLabel.text = "You have access to the Amusement Park Rides! Have fun!"
            }
        }
        
        
            if badge?.hasEmployeeBadge == true {
                print("Checking employee Ride Access")
                TestResultsLabel.text = "Sorry, you cannot ride the rides or skip the lines"
            } 
            
            if vendorID?.hasEmployeeBadge == false {
                print("Checking vendor ride access")
                TestResultsLabel.text = "Sorry, you cannot ride the rides or skip the lines"
            }
        }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is ViewController {
            if pass != nil {
                pass = nil
            } else if badge != nil {
                badge = nil
            } else if vendorID != nil {
                vendorID = nil
            }
        }
    }
    
    @IBAction func GoBackButton(_ sender: Any) {
        print("Going back to previous view controller")
        
        performSegue(withIdentifier: "FirstViewController", sender: nil)

    }
    
    

}



