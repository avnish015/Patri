//
//  NewTaskViewModel.swift
//  Patri
//
//  Created by Avnish on 29/05/21.
//

import Foundation

class NewTaskViewModel:ObservableObject {
    @Published var title:String = "" {
        didSet {
            validateNewTask()
        }
    }
    
    @Published var description:String = ""
    @Published var isValidDetails = true
    
    func validateNewTask() {
        if title.isEmpty {
            isValidDetails = true
        }
        
    }
    
    func addNewTask() ->Task{
        return Task(title: title, description: description, lastUpdated: Date())
    }
}
