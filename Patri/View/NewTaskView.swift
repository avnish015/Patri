//
//  NewTaskView.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import SwiftUI

struct NewTaskView: View {
    @Binding var shouldShowView:Bool
    @StateObject var newTaskViewModel:NewTaskViewModel
    @EnvironmentObject var homeViewModel:HomeViewModel
    
    var body: some View {
            VStack {
                TextField("Title", text: $newTaskViewModel.title)
                    .frame(height: 40)
                    .border(Color.gray, width: 1)
                ZStack(alignment:.center) {
                    TextEditor(text: $newTaskViewModel.description)
                    if newTaskViewModel.description.isEmpty {
                        Text("Description")
                            .font(.system(size: 30))
                            .foregroundColor(.gray)
                    }
                }
                .border(Color.gray, width: 1)
                .padding(.all, 3)
            }
            .padding(.horizontal, 3)
            .navigationBarTitle(Text("New task"), displayMode: .inline)
            .navigationBarItems(trailing: Button(action: {
                shouldShowView = false
                if newTaskViewModel.isValidDetails {
                    homeViewModel.taskList.append(newTaskViewModel.addNewTask())
                }
            }, label: {
                Image(systemName: "checkmark")
            }))
            .navigationBarBackButtonHidden(true)
    }
    
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView(shouldShowView: .constant(false), newTaskViewModel: NewTaskViewModel())
    }
}
