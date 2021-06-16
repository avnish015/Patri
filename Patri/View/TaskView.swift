//
//  TaskView.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import SwiftUI

struct TaskView: View {
    var task:Task
    var body: some View {
//        GeometryReader {geometry in
            VStack(alignment: .leading) {
                HStack {
                    Text("Title:")
                        .font(.title)
                        .bold()

                    Text(task.title)
                        .font(.title)
                }
                VStack(alignment:.leading,spacing: 3){
                    Text("Description:")
                        .font(.title2)
                        .bold()
                    Text(task.description)
                        .font(.title2)
                }
            }
//            .frame(width:geometry.size.width)
            .aspectRatio(contentMode: .fit)
            .padding()
            .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.gray, lineWidth: 2.0))
            .foregroundColor(.gray)
        }
//    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        TaskView(task: task1)
            .frame(width: 350, height: 300, alignment: .center)
    }
}
