//
//  Task.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import Foundation
import SwiftUI

struct Task:Identifiable {
    let id = UUID().uuidString
    var title:String
    var description:String
    var lastUpdated:Date
    var font:Font = Font.system(.body)
}
