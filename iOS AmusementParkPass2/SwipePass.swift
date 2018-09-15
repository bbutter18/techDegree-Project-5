//
//  SwipePass.swift
//  iOS AmusementParkPass2
//
//  Created by Woodchuck on 9/1/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation






func swipeEmployeeAreaAccess(employee: Employable, accessTo: AreaAccess) {
    
    if employee.hasEmployeeBadge == true {
        
        if employee.employeeType == .FoodService && accessTo.self == .AmusementPark || employee.employeeType == .FoodService && accessTo.self == .Kitchen {
            print("Access Granted")
        } else if employee.employeeType == .Maintenance && accessTo.self == .AmusementPark || employee.employeeType == .Maintenance && accessTo.self == .MaintenanceArea || employee.employeeType == .Maintenance && accessTo.self == .RideControl || employee.employeeType == .Maintenance && accessTo.self == .Kitchen {
            print("Acess Granted")
        } else if employee.employeeType == .RideService && accessTo.self == .RideControl || employee.employeeType == .RideService && accessTo.self == .AmusementPark {
            print("Access Granted")
        } else if employee.employeeType == .ShiftManager && accessTo.self == .AmusementPark || employee.employeeType == .ShiftManager && accessTo.self == .Office || employee.employeeType == .ShiftManager && accessTo.self == .MaintenanceArea || employee.employeeType == .ShiftManager && accessTo.self == .Kitchen || employee.employeeType == .ShiftManager && accessTo.self == .RideControl {
            print("Acess Granted")
            
        } else {
            print("Access Denied. Invalid Credentials")
            
            
        }
    } else if employee.hasEmployeeBadge == false {
    
        if employee.employeeType == .ContractEmployee {
        
            if employee.projectNumber == .project1001 && accessTo.self == .AmusementPark || employee.projectNumber == .project1001 && accessTo.self == .RideControl {
                print("Access Granted")
            } else if employee.projectNumber == .project1002 && accessTo.self == .AmusementPark || employee.projectNumber == .project1002 && accessTo.self == .RideControl || employee.projectNumber == .project1002 && accessTo.self == .MaintenanceArea {
                print("Access Granted")
            } else if employee.projectNumber == .project1003 && accessTo.self == .AmusementPark || employee.projectNumber == .project1003 && accessTo.self == .RideControl || employee.projectNumber == .project1003 && accessTo.self == .Kitchen || employee.projectNumber == .project1003 && accessTo.self == .MaintenanceArea || employee.projectNumber == .project1003 && accessTo.self == .Office {
                print("Access Granted")
            } else if employee.projectNumber == .project2001 && accessTo.self == .Office {
                print("Access Granted")
            } else if employee.projectNumber == .project2002 && accessTo.self == .Kitchen || employee.projectNumber == .project2002 && accessTo.self == .MaintenanceArea || employee.projectNumber == .project2002 && accessTo.self == .Office {
                print("Access Granted")
            } else {
                print("Access Denied. Invalid Credentials")
            }
        }
    }
}


func swipeEmployeeDiscount(for Employee: Employable) {
    
    let discounts = Employee.availableDiscounts
    
    for(key, value) in discounts {
        print("\(key) is discounted at \(value)% Off Total Price")
    }
}


func swipeEmployeeRideAccess(employee: Employable) {
    if employee.hasEmployeeBadge == true {
        print("Access Granted. Enjoy the Ride.")
    } else {
        print("You do not have permission to ride the Rides")
    }
}


func swipeVendorCompanyAreaAccess(vendor: Vendor, accessTo: AreaAccess) {

    if vendor.hasEmployeeBadge == false {
        if vendor.vendorCompany == .Acme && accessTo.self == .Kitchen {
            print("Access Granted")
        } else if vendor.vendorCompany == .Orkin && accessTo.self == .AmusementPark || vendor.vendorCompany == .Orkin && accessTo.self == .RideControl || vendor.vendorCompany == .Orkin && accessTo.self == .Kitchen {
            print("Access Granted")
        } else if vendor.vendorCompany == .Fedex && accessTo.self == .MaintenanceArea || vendor.vendorCompany == .Fedex && accessTo.self == .Office {
            print("Access Granted")
        } else if vendor.vendorCompany == .NWElectrical && accessTo.self == .AmusementPark || vendor.vendorCompany == .NWElectrical && accessTo.self == .RideControl || vendor.vendorCompany == .NWElectrical && accessTo.self == .Kitchen || vendor.vendorCompany == .NWElectrical && accessTo.self == .MaintenanceArea || vendor.vendorCompany == .NWElectrical && accessTo.self == .Office {
            print("Access Granted")
        } else {
            print("Access Denied. You do not have the credentials to pass")
        }
    }
}

func swipeVendorDiscount(for vendor: Vendor) {
    let discounts = vendor.availableDiscounts
    
    for(key, value) in discounts {
        print("\(key) is discounted at \(value)% Off Total Price")
    }
}

func swipeVendorRideAccess(for vendor: Vendor) {
    if vendor.hasEmployeeBadge == true {
        print("Access Granted. Enjoy the Ride.")
    } else {
        print("You do not have permission to ride the Rides")
    }

}

//MARK: Guest Swipe

func swipeGuestAccess(guest: AnyDayGuest, accessTo: AreaAccess) {
    
    if guest.hasParkPass == true {
        
        if guest.parkAccessType == .ClassicGuest && [accessTo] == guest.accessArea {
            print("Access Granted")
        } else if guest.parkAccessType == .VIPGuest && [accessTo] == guest.accessArea {
            print("Access Granted")
        } else if guest.parkAccessType == .ChildGuest && [accessTo] == guest.accessArea {
            print("Access Granted")
        } else if guest.parkAccessType == .SeniorGuest && [accessTo] == guest.accessArea {
            print("Access Granted")
        } else if guest.parkAccessType == .SeasonPassGuest && [accessTo] == guest.accessArea {
            print("Acess Granted")
        } else {
            print("Access Denied. Invalid Credentials")
        }
    }
}

func swipeGuestDiscount(for Guest: AnyDayGuest) {
    
    let discounts = Guest.availableDiscounts
    
    for(key, value) in discounts {
        print("\(key) is discounted at \(value)% Off Total Price")
    }
}


func swipeGuestRideAccess(for Guest: AnyDayGuest) {
    
    if Guest.hasParkPass == true {
        print("Access Granted. Enjoy the Ride.")
    } else {
        print("Pass not activated yet")
    }
}

func swipeGuestSkipRideLines(for Guest: AnyDayGuest) {
    
    if Guest.hasParkPass == true {
        if Guest.parkAccessType == .VIPGuest || Guest.parkAccessType == .SeasonPassGuest || Guest.parkAccessType == .SeniorGuest {
            print("Access Granted. You may jump to the front of the line")
        } else {
            print("Sorry, you do not have the credentials to skip the line. Please upgrade to a VIP Pass!")
        }
    }
}

func swipeCheckForChildAdmission(for Guest: AnyDayGuest) {
    
    if Guest.isChild == true {
        print("Access Granted. You are allowed Free Admission")
    } else {
        print("Sorry, but this pass does not qualify for free Child Admssion to the Park")
    }
}

func swipeCheckForSeniorAdmission(for Guest: AnyDayGuest) {

    if Guest.isSenior == true {
        print("Access Granted. You are allowed Senior Admission")
    } else {
        print("Sorry, but this pass does not qualify for Senior Admission to the Park")
    }
}





    
