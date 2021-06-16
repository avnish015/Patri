//
//  HomeViewModel.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import Foundation
import SwiftUI

class HomeViewModel:ObservableObject {
    @Published var taskList = [Task]()
    
    init() {
        crateSampleNotes()
    }
    
    func crateSampleNotes() {
        self.taskList = tasksList
    }
}
