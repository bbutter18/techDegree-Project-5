//
//  ViewController.swift
//  iOS AmusementParkPass2
//
//  Created by Woodchuck on 9/1/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import UIKit
import Foundation


//MARK: Global Properties
    var parkPassType: ParkPersonType?
    var pass: AnyDayGuest?
    var badge: Employable?
    var vendorID: Vendor?

class ViewController: UIViewController {

    
    
    
    @IBOutlet var MainCategoryButtons: [UIButton]!
    @IBOutlet var GuestSubCategory: [UIButton]!
    
    @IBOutlet var EmployeeSubCategory: [UIButton]!
    
    @IBOutlet weak var dateBirth: UITextField!
    @IBOutlet weak var socialSecurity: UITextField!
    @IBOutlet weak var projectNum: UITextField!
    
    
    @IBOutlet weak var firstNameField: UITextField!
    @IBOutlet weak var lastNameField: UITextField!
    @IBOutlet weak var companyField: UITextField!
    @IBOutlet weak var addressField: UITextField!
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var stateField: UITextField!
    @IBOutlet weak var zipcodeField: UITextField!
    
    @IBOutlet weak var SSNLabel: UILabel!
    
    
    @IBOutlet weak var generatePassButton: UIButton!
    
    @IBOutlet weak var populateDataButton: UIButton!
    
    
    
    
 
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        disableAll()
        clearTextField()
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func resetMainCategoryButtonHighlights() {
        let menuButtons = MainCategoryButtons!
        
        for button in menuButtons {
            button.setTitleColor(UIColor.lightGray, for: .normal)
        }
    }
    
    func resetSubCategoryButtonHighlights() {
        let subMenuButtons = GuestSubCategory!
        
        for subButtons in subMenuButtons {
            subButtons.setTitleColor(UIColor.lightGray, for: .normal)
        }
    }
    
    
    
    func disableAll() {
        let InfoFields = [dateBirth, socialSecurity, projectNum, firstNameField, lastNameField, companyField, addressField, cityField, stateField, zipcodeField]
        
        for field in InfoFields {
            field?.isEnabled = false
        }
        
        
        let subGuestButtons = GuestSubCategory!
        
        for subButtons in subGuestButtons {
            subButtons.isEnabled = false
            subButtons.isHidden = true
        }
        
        let subEmployeeButtons = EmployeeSubCategory!
        
        for subEmpButtons in subEmployeeButtons {
            subEmpButtons.isEnabled = false
            subEmpButtons.isHidden = true
        }
        
        generatePassButton.isEnabled = false
        populateDataButton.isEnabled = false
        
        
    }
    
    func clearTextField() {
        let InfoFields = [dateBirth, socialSecurity, projectNum, firstNameField, lastNameField, companyField, addressField, cityField, stateField, zipcodeField]
        
        for field in InfoFields {
            field?.text = ""
            field?.backgroundColor = UIColor.lightGray
        }
    }
    
    func selectedMainButtonEqualsWhite() {
        let mainButton = MainCategoryButtons!
        
        for button in mainButton {
            button.setTitleColor(.white, for: .selected)
        }
    }
    
    
    func childGuestInfoField() {
        dateBirth.isEnabled = true
        dateBirth.backgroundColor = UIColor.white
        
    }
    
    func seasonPassGuestInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        addressField.isEnabled = true
        addressField.backgroundColor = UIColor.white
        
        cityField.isEnabled = true
        cityField.backgroundColor = UIColor.white
        
        stateField.isEnabled = true
        stateField.backgroundColor = UIColor.white
        
        zipcodeField.isEnabled = true
        zipcodeField.backgroundColor = UIColor.white
    }
    
    func classicGuestInfoField() {}
    
    func vipGuestInfoField() {}
    
    func seniorGuestInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        dateBirth.isEnabled = true
        dateBirth.backgroundColor = UIColor.white
    }
    
    func employeeInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        addressField.isEnabled = true
        addressField.backgroundColor = UIColor.white
        
        cityField.isEnabled = true
        cityField.backgroundColor = UIColor.white
        
        stateField.isEnabled = true
        stateField.backgroundColor = UIColor.white
        
        zipcodeField.isEnabled = true
        zipcodeField.backgroundColor = UIColor.white
    }
    
    func vendorInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        companyField.isEnabled = true
        companyField.backgroundColor = UIColor.white
        
        dateBirth.isEnabled = true
        dateBirth.backgroundColor = UIColor.white
        
        socialSecurity.isEnabled = true
        socialSecurity.backgroundColor = UIColor.white
    }
    
    func managerInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        addressField.isEnabled = true
        addressField.backgroundColor = UIColor.white
        
        cityField.isEnabled = true
        cityField.backgroundColor = UIColor.white
        
        stateField.isEnabled = true
        stateField.backgroundColor = UIColor.white
        
        zipcodeField.isEnabled = true
        zipcodeField.backgroundColor = UIColor.white
        
        socialSecurity.isEnabled = true
        socialSecurity.backgroundColor = UIColor.white
    }
    
    func contractorInfoField() {
        firstNameField.isEnabled = true
        firstNameField.backgroundColor = UIColor.white
        
        lastNameField.isEnabled = true
        lastNameField.backgroundColor = UIColor.white
        
        addressField.isEnabled = true
        addressField.backgroundColor = UIColor.white
        
        cityField.isEnabled = true
        cityField.backgroundColor = UIColor.white
        
        stateField.isEnabled = true
        stateField.backgroundColor = UIColor.white
        
        zipcodeField.isEnabled = true
        zipcodeField.backgroundColor = UIColor.white
        
        companyField.isEnabled = true
        companyField.backgroundColor = UIColor.white
        
        projectNum.isEnabled = true
        projectNum.backgroundColor = UIColor.white
    }
    
    
    func disableTextFields() {
        let InfoFields = [dateBirth, socialSecurity, projectNum, firstNameField, lastNameField, companyField, addressField, cityField, stateField, zipcodeField]
        
        for field in InfoFields {
            field?.isEnabled = false
            field?.backgroundColor = nil
        }
    }
    
    func resetGuestSubButtonHighlights() {
        let subGuestButtons = GuestSubCategory!
        
        for subButtons in subGuestButtons {
            subButtons.backgroundColor = UIColor.lightGray
           
        }
    }
    
    

    
    
    
    @IBAction func GuestMainButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        let subMenuButtons = GuestSubCategory!
        
        for subButtons in subMenuButtons {
            subButtons.isHidden = false
            subButtons.isEnabled = true
        }
        
        let subEmployeeButtons = EmployeeSubCategory!
        
        for subEmpButtons in subEmployeeButtons {
            subEmpButtons.isEnabled = false
            subEmpButtons.isHidden = true
        }
    }
    
    
    
    
    @IBAction func EmployeeMainButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        let subEmployeeButtons = EmployeeSubCategory!
        
        for subEmpButtons in subEmployeeButtons {
            subEmpButtons.isEnabled = true
            subEmpButtons.isHidden = false
        }
        
        let subMenuButtons = GuestSubCategory!
        
        for subButtons in subMenuButtons {
            subButtons.isHidden = true
            subButtons.isEnabled = false
        }
    }
    
    
    
    
    @IBAction func ManagerMainButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
      
        sender.setTitleColor(UIColor.white, for: .selected)
        
        let subMenuButtons = GuestSubCategory!
        
        for subButtons in subMenuButtons {
            subButtons.isEnabled = false
            subButtons.isHidden = true

        }
        
        let subEmployeeButtons = EmployeeSubCategory!
        
        for subEmpButtons in subEmployeeButtons {
            subEmpButtons.isEnabled = false
            subEmpButtons.isHidden = true
        }
        managerInfoField()
        parkPassType = .ShiftManager
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    @IBAction func VendorMainButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        let subMenuButtons = GuestSubCategory!
        
        for subButtons in subMenuButtons {
            subButtons.isEnabled = false
            subButtons.isHidden = true

        }
        
        let subEmployeeButtons = EmployeeSubCategory!
        
        for subEmpButtons in subEmployeeButtons {
            subEmpButtons.isEnabled = false
            subEmpButtons.isHidden = true
        }
        
        vendorInfoField()
        parkPassType = .Vendor
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "Date of Visit"
    }
    
    
    
    
    
    @IBAction func ChildButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()

        sender.setTitleColor(UIColor.white, for: .selected)
        childGuestInfoField()
        parkPassType = .ChildGuest
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"

    }
    
    
    
    @IBAction func AdultButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()

        sender.setTitleColor(UIColor.white, for: .selected)
        classicGuestInfoField()
        parkPassType = .ClassicGuest
        generatePassButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    @IBAction func VIPButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()

        sender.setTitleColor(UIColor.white, for: .selected)
        vipGuestInfoField()
        parkPassType = .VIPGuest
        generatePassButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    @IBAction func SeniorButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()

        sender.setTitleColor(UIColor.white, for: .selected)
        seniorGuestInfoField()
        parkPassType = .SeniorGuest
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    
    
    @IBAction func SeasonButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()

        sender.setTitleColor(UIColor.white, for: .selected)
        seasonPassGuestInfoField()
        parkPassType = .SeasonPassGuest
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    func displayAlertError(with title: String, message: String) {
        
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Okay", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
    }
    
    
    
    @IBAction func RideEmployeeButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        employeeInfoField()
        parkPassType = .RideService
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    
    @IBAction func FoodEmployeeButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        employeeInfoField()
        parkPassType = .FoodService
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    
    
    @IBAction func MaintenanceEmployeeButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        employeeInfoField()
        parkPassType = .Maintenance
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    
    
    @IBAction func ContractorEmployeeButton(_ sender: UIButton) {
        disableTextFields()
        clearTextField()
        sender.setTitleColor(UIColor.white, for: .selected)
        
        contractorInfoField()
        parkPassType = .ContractEmployee
        generatePassButton.isEnabled = true
        populateDataButton.isEnabled = true
        SSNLabel.text = "SSN"
    }
    
    
    
    
    
    
    
    
    
    
    
    
        @IBAction func GeneratePassButtonSelected(_ sender: Any) {
    
        print("Generate Pass Button Selected")
            
            if parkPassType == .ClassicGuest {
                pass = ClassicGuest()
                print("Classic Guest Pass Generated")
            }
            
            if parkPassType == .VIPGuest {
                pass = VIPGuest()
                print("VIP Guest Pass Generated")
            }
            
            if parkPassType == .SeniorGuest {
                if firstNameField.text == "" && lastNameField.text == "" && dateBirth.text == "" {
                    displayAlertError(with: "Error", message: "Missing all fields")
                } else if firstNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing First Name")
                } else if lastNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Last Name")
                } else if dateBirth.text == "" {
                    displayAlertError(with: "Error", message: "Missing Date of Birth in MM/DD/yyyy format")
                } else if dateBirth.text!.characters.count < 10 || dateBirth.text!.characters.count > 10 {
                    displayAlertError(with: "Error", message: "Missing Date of Birth in MM/DD/YYYY format")
                } else if firstNameField.text != nil && lastNameField.text != nil && dateBirth.text != nil {
                    
                   let senior = try! SeniorGuest(firstName: firstNameField.text, lastName: lastNameField.text, Birthday: dateBirth.text)
                    

                    
                    
                    senior?.seniorsAge(birthday: dateBirth.text!)
                    senior?.seniorsAgeVerification()
                    pass = senior
                    
                    if pass?.isSenior == true {
                        print("Senior Guest Pass Generated")
                    } else {
                        dateBirth.text = ""
                        displayAlertError(with: "Error", message: "Guest is not old enough for Senior Pass in MM/DD/yyyy format")
                    }
                }
            }
            
            if parkPassType == .ChildGuest {
                
                if dateBirth.text == "" {
                    displayAlertError(with: "Error", message: "Missing Date of Birth in MM/DD/yyyy format")
                } else if dateBirth.text!.characters.count < 10 || dateBirth.text!.characters.count > 10 {
                    displayAlertError(with: "Error", message: "Missing Date of Birth in MM/DD/YYYY format")
                } else if dateBirth.text != nil {
                    
                let child = try! ChildGuest(Birthday: dateBirth.text)
                    
                    child?.childsAge(birthday: dateBirth.text!)
                    child?.childsAgeVerification()
                    pass = child
                    
                    if pass?.isChild == true {
                        print("Child Guest Pass Generated")
                    } else {
                        dateBirth.text = ""
                        displayAlertError(with: "Error", message: "Guest is too old for Child Pass in MM/DD/yyyy format")
                    }
                }
            }
            
            if parkPassType == .SeasonPassGuest {
                if firstNameField.text == "" && lastNameField.text == "" && addressField.text == "" && cityField.text == "" && stateField.text == "" && zipcodeField.text == "" {
                    displayAlertError(with: "Error", message: "Missing All Fields")
                } else if firstNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing First Name")
                } else if lastNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Last Name")
                } else if addressField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Address")
                } else if cityField.text == "" {
                    displayAlertError(with: "Error", message: "Missing City")
                } else if stateField.text == "" {
                    displayAlertError(with: "Error", message: "Missing State")
                } else if zipcodeField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Zipcode")
                } else
            
                if firstNameField.text != nil && lastNameField.text != nil && addressField.text != nil && cityField.text != nil && stateField.text != nil && zipcodeField.text != nil {
                    
                    pass = try! SeasonPassGuest(firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                    print("Season Guest Pass Generated")
                    
                }
            }
            
            if parkPassType == .FoodService || parkPassType == .Maintenance || parkPassType == .ShiftManager || parkPassType == .RideService {
                if firstNameField.text == "" && lastNameField.text == "" && addressField.text == "" && cityField.text == "" && stateField.text == "" && zipcodeField.text == "" {
                    displayAlertError(with: "Error", message: "Missing All Fields")
                } else if firstNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing First Name")
                } else if lastNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Last Name")
                } else if addressField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Address")
                } else if cityField.text == "" {
                    displayAlertError(with: "Error", message: "Missing City")
                } else if stateField.text == "" {
                    displayAlertError(with: "Error", message: "Missing State")
                } else if zipcodeField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Zipcode")
                
                } else if firstNameField.text != nil && lastNameField.text != nil && addressField.text != nil && cityField.text != nil && stateField.text != nil && zipcodeField.text != nil {
                    
                    if parkPassType == .FoodService {
                        badge = try! FoodService(firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                        print("Food Service Employee Badge Generated")
                    }
                    
                    if parkPassType == .Maintenance {
                        badge = try! Maintenance(firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                        print("Food Service Employee Badge Generated")
                    }
                    
                    if parkPassType == .RideService {
                        badge = try! RideService(firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                        print("Ride Service Employee Badge Generated")
                    }
                    
                    if parkPassType == .ShiftManager {
                        badge = try! ShiftManager(firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                        print("Shift Manager Employee Badge Generated")
                    }
            }
            
          
            
            if parkPassType == .ContractEmployee {
                if firstNameField.text == "" && lastNameField.text == "" && addressField.text == "" && cityField.text == "" && stateField.text == "" && zipcodeField.text == "" && socialSecurity.text == "" {
                    displayAlertError(with: "Error", message: "Missing All Fields")
                } else if firstNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing First Name")
                } else if lastNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Last Name")
                } else if addressField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Address")
                } else if cityField.text == "" {
                    displayAlertError(with: "Error", message: "Missing City")
                } else if stateField.text == "" {
                    displayAlertError(with: "Error", message: "Missing State")
                } else if zipcodeField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Zipcode")
                } else if socialSecurity.text == "" {
                    displayAlertError(with: "Error", message: "Missing Project Number")
                
                } else if firstNameField.text != nil && lastNameField.text != nil && addressField.text != nil && cityField.text != nil && stateField.text != nil && zipcodeField.text != nil && socialSecurity.text != nil {
                    
                    if socialSecurity.text == "1001" || socialSecurity.text == "1002" || socialSecurity.text == "1003" || socialSecurity.text == "2002" || socialSecurity.text == "2001" {
                    
                    badge = try! ContractEmployee(projectNumber: socialSecurity.text, firstName: firstNameField.text, lastName: lastNameField.text, address: addressField.text, city: cityField.text, state: stateField.text, zipcode: zipcodeField.text)
                    print("Contract Employee Badge Generated")
                    } else {
                        displayAlertError(with: "Error", message: "Please enter valid project number")
                    }
                }
            }
            
            if parkPassType == .Vendor {
                if firstNameField.text == "" && lastNameField.text == "" && dateBirth.text == "" && companyField.text == "" && socialSecurity.text == "" {
                    displayAlertError(with: "Error", message: "Missing all fields")
                } else if firstNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing First Name")
                } else if lastNameField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Last Name")
                } else if dateBirth.text == "" {
                    displayAlertError(with: "Error", message: "Missing Date of Birth")
                } else if companyField.text == "" {
                    displayAlertError(with: "Error", message: "Missing Company Information")
                } else if socialSecurity.text == "" {
                    displayAlertError(with: "Error", message: "Missing Date of Visit")
                
                } else if firstNameField.text != nil && lastNameField.text != nil && companyField.text != nil && dateBirth.text != nil && socialSecurity.text != nil {
                    
                    if companyField.text == "Acme" || companyField.text == "Orkin" || companyField.text == "NWElectrical" || companyField.text == "Fedex" {
                    
                    vendorID = try! Vendor(firstName: firstNameField.text, lastName: lastNameField.text, vendorCompany: companyField.text, birthday: dateBirth.text, visitDate: socialSecurity.text)
                    print("Vendor ID Badge Generated")
                    } else {
                        displayAlertError(with: "Error", message: "Please enter valid allowed company name")
                    }
                }
                
            }
                
            }
           
            if pass != nil || badge != nil || vendorID != nil {
            
            performSegue(withIdentifier: "CreateNewPassSegue", sender: nil)
                print("Performing actual segue")
            }
        }
    
    
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is PassViewController {
            
            print("Going to segue Pass View Controller")
            
            let newPassController = segue.destination as? PassViewController
            
            if pass?.parkAccessType == .ClassicGuest {
               print("Executed Classic Pass Information")
                
                newPassController?.nameString = "Jaime Smith"
                newPassController?.passString = "Classic Guest Pass"
                newPassController?.rideString = "Unlimited Rides"
                newPassController?.merchString = "0% Merchandise Discount"
                newPassController?.foodString = "0% Food Discount"
                
            }
            
            if pass?.parkAccessType == .ChildGuest {
                print("Executed Child Pass Information")
                newPassController?.nameString = "Child Smith"
                newPassController?.passString = "Child Guest Pass"
                newPassController?.rideString = "Unlimited Rides"
                newPassController?.merchString = "0% Merchandise Discount"
                newPassController?.foodString = "0% Food Discount"
            }
            
            if pass?.parkAccessType == .VIPGuest {
                print("Executed VIP Guest Pass Information")
                
                newPassController?.nameString = "VIP Smith"
                newPassController?.passString = "VIP Guest Pass"
                newPassController?.rideString = "Unlimited Rides"
                newPassController?.merchString = "20% Merchandise Discount"
                newPassController?.foodString = "10% Food Discount"
            }
            
            if pass?.parkAccessType == .SeniorGuest {
                print("Executed Senior Guest Pass Information")
                
                newPassController?.nameString = "\(firstNameField.text!) \(lastNameField.text!)"
                newPassController?.passString = "Senior Guest Pass"
                newPassController?.rideString = "Unlimited Rides"
                newPassController?.merchString = "10% Merchandise Discount"
                newPassController?.foodString = "10% Food Discount"
            }
            
            if pass?.parkAccessType == .SeasonPassGuest {
                print("Executed Season Guest Pass Information")
                
                newPassController?.nameString = "\(firstNameField.text!) \(lastNameField.text!)"
                newPassController?.passString = "Season Guest Pass"
                newPassController?.rideString = "Unlimited Rides"
                newPassController?.merchString = "20% Merchandise Discount"
                newPassController?.foodString = "10% Food Discount"
                
            }
            
            if badge?.employeeType == .RideService || badge?.employeeType == .Maintenance || badge?.employeeType == .FoodService || badge?.employeeType == .ShiftManager {
            
                newPassController?.nameString = "\(firstNameField.text!) \(lastNameField.text!)"
                newPassController?.passString = "Park Employee Badge"
                newPassController?.rideString = "\(badge!.employeeType)"
                newPassController?.merchString = "\(badge!.availableDiscounts[.Merchandise]!)% Merchandise Discount"
                newPassController?.foodString = "\(badge!.availableDiscounts[.Food]!)% Food Discount"
            }
            
            if vendorID?.parkAccessType == .Vendor {
                newPassController?.nameString = "\(firstNameField.text!) \(lastNameField.text!)"
                newPassController?.passString = "Vendor ID"
                newPassController?.rideString = "\(companyField.text!)"
                newPassController?.merchString = "0% Merchandise Discount"
                newPassController?.foodString = "0% Food Discount"
            }
            
            if badge?.employeeType == .ContractEmployee {
                newPassController?.nameString = "\(firstNameField.text!) \(lastNameField.text!)"
                newPassController?.passString = "Park Contract Employee Badge"
                newPassController?.rideString = "Project # \(projectNum.text!)"
                newPassController?.merchString = "0% Merchandise Discount"
                newPassController?.foodString = "0% Food Discount"
            }
            
        }
    }
    
    


    @IBAction func PopulateDataButton(_ sender: Any) {
        
        if parkPassType == .ChildGuest {
            dateBirth.text = "02/21/2014"
        }
        
        if parkPassType == .SeniorGuest {
            firstNameField.text = "Jaime"
            lastNameField.text = "Stewart"
            dateBirth.text = "01/30/1950"
        }
        
        if parkPassType == .SeasonPassGuest {
            firstNameField.text = "Bobby"
            lastNameField.text = "Carnival"
            addressField.text = "1245 Circle Court"
            cityField.text = "Indianapolis"
            stateField.text = "Indiana"
            zipcodeField.text = "46032"
        }
        
        if parkPassType == .RideService || parkPassType == .Maintenance || parkPassType == .FoodService || parkPassType == .ShiftManager {
            firstNameField.text = "Steph"
            lastNameField.text = "Robinson"
            addressField.text = "1245 Hallelujah St."
            cityField.text = "New York City"
            stateField.text = "New York"
            zipcodeField.text = "01234"
        }
        
        if parkPassType == .ContractEmployee {
            projectNum.text = "1001"
            firstNameField.text = "Yan"
            lastNameField.text = "Smith"
            addressField.text = "4637 Koombaya"
            cityField.text = "Chicago"
            stateField.text = "Illinois"
            zipcodeField.text = "47289"
        }
        
        if parkPassType == .Vendor {
            firstNameField.text = "June"
            lastNameField.text = "Smith"
            companyField.text = "Acme"
            dateBirth.text = "09/18/1990"
            socialSecurity.text = "08/20/2018"
        }
    }
    
        
        
        
    
    




}









