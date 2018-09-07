//
//  ParkEmployee.swift
//  iOS AmusementParkPass2
//
//  Created by Woodchuck on 9/1/18.
//  Copyright © 2018 Treehouse Island. All rights reserved.
//

import Foundation




protocol Employable {
    
    var firstName: String? { get }
    var lastName: String? { get }
    var address: String? { get }
    var city: String? { get }
    var state: String? { get }
    var zipcode: Int? { get }
    
    var employeeType: ParkPersonType { get }
    var projectNumber: ProjectNumber? { get }
    
    var hasEmployeeBadge: Bool? { get }
    var accessArea: [AreaAccess] { get }
    var accessRides: [RideAccess] { get }
    var availableDiscounts: [DiscountAccess: Double] { get }
}


enum RequiredInformation: Error {
    case AllInformationMissing
    
    case FirstNameMissing
    case LastNameMissing
    case AddressMissing
    case CityMissing
    case StateMissing
    case ZipcodeMissing
    case DateOfBirthMissing
    
    case InvalidVendorCompany
    case DateOfVisitMissing
    case InvalidProjectNumber
}


enum ProjectNumber: Int {
    case project1001 = 1001
    case project1002 = 1002
    case project1003 = 1003
    case project2001 = 2001
    case project2002 = 2002
    
}



class FoodService: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .FoodService
    var projectNumber: ProjectNumber? = nil
    var accessArea: [AreaAccess] = [.AmusementPark, .Kitchen]
    var accessRides: [RideAccess] = [.AllRides]
    
    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
    init?(firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        
        guard let firstName = firstName else {
            print("Missing First Name")
            throw RequiredInformation.FirstNameMissing
        }
        
        guard let lastName = lastName else {
            print("Missing Last Name")
            throw RequiredInformation.LastNameMissing
        }
        
        guard let address = address else {
            print("Missing Address Information")
            throw RequiredInformation.AddressMissing
        }
        
        guard let city = city else {
            print("Missing City Information")
            throw RequiredInformation.CityMissing
        }
        
        guard let state = state else {
            print("Missing State Information")
            throw RequiredInformation.StateMissing
        }
        
        guard let zipcode = zipcode else {
            print("Missing Zipcode Information")
            throw RequiredInformation.ZipcodeMissing
        }
        
        
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food : 15, .Merchandise : 25]
}


class Maintenance: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .Maintenance
    var projectNumber: ProjectNumber? = nil
    var accessArea: [AreaAccess] = [.AmusementPark, .Kitchen, .RideControl, .MaintenanceArea]
    var accessRides: [RideAccess] = [.AllRides]
    
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
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 15, .Merchandise: 25]
}



class RideService: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .RideService
    var projectNumber: ProjectNumber? = nil
    var accessArea: [AreaAccess] = [.AmusementPark, .RideControl]
    var accessRides: [RideAccess] = [.AllRides]
    
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
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 15.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 15, .Merchandise: 25]
    
    
}


class ShiftManager: Employable {
    
    var hasEmployeeBadge: Bool? = true
    let employeeType: ParkPersonType = .ShiftManager
    var projectNumber: ProjectNumber? = nil
    var accessArea: [AreaAccess] = [.AmusementPark, .RideControl, .Kitchen, .MaintenanceArea, .Office]
    var accessRides: [RideAccess] = [.AllRides]
    
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
    
    //is this necessary here????
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 25.0
        case .Merchandise: return 25.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 25, .Merchandise: 25]
    
    
}


//Contract Employees and Vendors must be a generic class or generic protocol

// OR use the enums and cases

class Vendor {

    var hasEmployeeBadge: Bool? = false
    //var vendorType: VendorType
    var accessArea: [AreaAccess] = []
    var accessRides: [RideAccess] = []
    
    var firstName: String?
    var lastName: String?
    
    //this needs to be changed since this is a generic and we don't know what copnay is what
    var vendorCompany: VendorCompany? = nil
    var birthday: Date?
    var visitDate: Date?
    
    
    enum VendorCompany {
        case Fedex
        case Orkin
        case NWElectrical
        case Acme
    }
    
    
    init?(firstName: String?, lastName: String?, vendorCompany: VendorCompany?, birthday: String?, visitDate: String? ) throws {
    
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        
        guard let firstName = firstName else {
            throw RequiredInformation.FirstNameMissing
        }
    
        guard let lastName = lastName else {
            throw RequiredInformation.LastNameMissing
        }
        
        guard let vendorCompany = vendorCompany else {
            throw RequiredInformation.InvalidVendorCompany
        }
        
        guard let birthday = dateFormatter.date(from: birthday!) else {
            throw RequiredInformation.DateOfBirthMissing
        }
        
        guard visitDate != nil else {
            throw RequiredInformation.DateOfVisitMissing
        }
        
        self.firstName = firstName
        self.lastName = lastName
        self.vendorCompany = vendorCompany
        self.birthday = birthday
        self.visitDate = Date()
    }
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 0.0
        case .Merchandise: return 0.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    
}




class ContractEmployee: Employable {

    var hasEmployeeBadge: Bool? = false
    var employeeType: ParkPersonType = .ContractEmployee
    var accessArea: [AreaAccess] = []
    var accessRides: [RideAccess] = []
    
    var projectNumber: ProjectNumber? = nil
    
    var firstName: String?
    var lastName: String?
    
    var address: String?
    var city: String?
    var state: String?
    var zipcode: Int?
    
   
    
    init?(projectNumber: Int?, firstName: String?, lastName: String?, address: String?, city: String?, state: String?, zipcode: Int?) throws {
        
        guard let projectNumber = projectNumber else {
            throw RequiredInformation.InvalidProjectNumber
        }
        
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
        
        self.projectNumber = ProjectNumber(rawValue: projectNumber)
        self.firstName = firstName
        self.lastName = lastName
        self.address = address
        self.city = city
        self.state = state
        self.zipcode = zipcode
    }
    
    
    func discountsAvailable(item: DiscountAccess) -> Double {
        
        switch item {
        case .Food: return 0.0
        case .Merchandise: return 0.0
        }
    }
    
    let availableDiscounts: [DiscountAccess : Double] = [.Food: 0, .Merchandise: 0]
    



}





























