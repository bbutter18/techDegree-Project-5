//
//  AnyDayGuest.swift
//  iOS AmusementParkPass2
//
//  Created by Woodchuck on 9/1/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation



enum AreaAccess {
    
    case Kitchen
    case MaintenanceArea
    case AmusementPark
    case Office
    case RideControl
    
}

enum RideAccess {
    case AllRides
    case SkipAllLines
    
}

enum DiscountAccess {
    case Food
    case Merchandise
}


enum ParkPersonType {
    case VIPGuest
    case ClassicGuest
    case ChildGuest
    case RideService
    case Maintenance
    case FoodService
    case ShiftManager
    case SeniorGuest
    case Vendor
    case ContractEmployee
    case SeasonPassGuest
    
}


protocol AnyDayGuest {
    var hasParkPass: Bool? { get }
    
    var parkAccessType: ParkPersonType { get }
    var accessArea: [AreaAccess] { get }
    var accessRides: [RideAccess] { get }
    var availableDiscounts: [DiscountAccess: Double] { get }
    
    var Birthday: String? { get }
    var isChild: Bool? { get }
    var isSenior: Bool? { get }
}




class ClassicGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .ClassicGuest
    var hasParkPass: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides]
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    var Birthday: String? = nil
    
    var isChild: Bool? = false
    var isSenior: Bool? = false
}


class VIPGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .VIPGuest
    var hasParkPass: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides, .SkipAllLines]
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess: Double] = [.Food: 10, .Merchandise: 20]
    var Birthday: String? = nil
    
    var isChild: Bool? = false
    var isSenior: Bool? = false
}


class ChildGuest: AnyDayGuest {
    
    let parkAccessType: ParkPersonType = .ChildGuest
    var hasParkPass: Bool? = true
    
    var isChild: Bool? = true
    var isSenior: Bool? = false
    
    var accessRides: [RideAccess] = [.AllRides]
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    var Birthday: String?
    
    init?(Birthday: String?) throws {
        
        guard let Birthday = Birthday else {
            
            print("Missing Date of Birth Information")
            throw RequiredInformation.DateOfBirthMissing
        }
        
        self.Birthday = Birthday
    }
    
    
    func childsAge(birthday: String) -> Int {
        
        let dateComposition = DateFormatter()
        dateComposition.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateComposition.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let presentDay = Date()
        let childsAge = calendar.components(.year, from: birthdayDate!, to: presentDay, options: [])
        let age = childsAge.year
        
        return age!
    }
    
    
    func childsAgeVerification() {
        if (childsAge(birthday: Birthday!)) <= 5 {
            isChild = true
            print("Child Pass Created Successfully")
        } else {
            isChild = false
            print("Invalid Age Requirements for Child Pass. CHild must be 5 or under to qualify")
        }
        
    }
    
}


class SeniorGuest: AnyDayGuest {

    let parkAccessType: ParkPersonType = .SeniorGuest
    var hasParkPass: Bool? = true
    
    var isChild: Bool? = false
    var isSenior: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides, .SkipAllLines]
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 10, .Merchandise: 10]
    var Birthday: String?
    
    var firstName: String?
    var lastName: String?
    
    init?(firstName: String?, lastName: String?, Birthday: String?) throws {
        
        guard let firstName = firstName else {
            
            print("Missing First Name Information")
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            
            print("Missing Last Name Information")
            throw RequiredInformation.LastNameMissing
        }
        
        guard let Birthday = Birthday else {
            
            print("Missing Date of Birth Information")
            throw RequiredInformation.DateOfBirthMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.Birthday = Birthday
    }
    
    
    func seniorsAge(birthday: String) -> Int {
        
        let dateComposition = DateFormatter()
        dateComposition.dateFormat = "MM/dd/yyyy"
        let birthdayDate = dateComposition.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let presentDay = Date()
        let seniorsAge = calendar.components(.year, from: birthdayDate!, to: presentDay, options: [])
        let age = seniorsAge.year
        
        return age!
    }
    
    
    func seniorsAgeVerification() {
        if (seniorsAge(birthday: Birthday!)) <= 5 {
            isSenior = true
            print("Senior Pass Created Successfully")
        } else {
            isSenior = false
            print("Invalid Age Requirements for Senior Pass. Senior must be 60 or over to qualify")
        }
        
    }


}




class SeasonPassGuest: AnyDayGuest {

    let parkAccessType: ParkPersonType = .SeasonPassGuest
    var hasParkPass: Bool? = true
    
    var accessRides: [RideAccess] = [.AllRides, .SkipAllLines]
    var accessArea: [AreaAccess] = [.AmusementPark]
    
    var availableDiscounts: [DiscountAccess : Double] = [.Food: 10, .Merchandise: 20]
    var Birthday: String? = nil
    
    var isChild: Bool? = false
    var isSenior: Bool? = false

    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        guard let firstName = firstName else {
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            throw RequiredInformation.ZipcodeMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    


}
































































