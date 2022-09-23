//
//  EmployeesViewModel.swift
//  MVVM_New
//
//  Created by Snehalata paliwal on 22/09/22.
//  Copyright © 2022 Snehalata paliwal. All rights reserved.
//

import Foundation

class EmployeesViewModel : NSObject {
    
    private var apiService : APIService!
    private(set) var empData : [EmployeeData]! {
        didSet {
            self.bindEmployeeViewModelToController()
        }
    }
    
    var bindEmployeeViewModelToController : (() -> ()) = {}
    
    override init() {
        super.init()
        self.apiService =  APIService()
        callFuncToGetEmpData()
    }
    
    func callFuncToGetEmpData() {
        self.apiService.apiToGetEmployeeData { (empData) in
            self.empData = empData
        }
    }
}
