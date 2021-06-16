//
//  HomeView.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import SwiftUI

struct HomeView: View {
    var homeViewModel:HomeViewModel = HomeViewModel()
    @State var shouldAddNewTask = false
    var body: some View {
//        ScrollView {
        GeometryReader{geo in
            List(homeViewModel.taskList){item in
                TaskView(task: item)
                    .padding(.vertical, 10)
            }
            .frame(maxWidth: .infinity, alignment: .topLeading)

        }

//            VStack {
               
//            }
//        }
        .ignoresSafeArea()

//        NavigationView{
//            VStack {
//                List(homeViewModel.taskList){item in
//                    TaskView(task: item)
//                }
//            }
////                ScrollView {
//////                    VStack {
////                        NavigationLink(
////                            destination: NewTaskView(shouldShowView: $shouldAddNewTask, newTaskViewModel: NewTaskViewModel()),
////                            isActive: $shouldAddNewTask){
////                            EmptyView()
////
////                        }
////                        List(homeViewModel.taskList){item in
////                            TaskView(task: item)
////                        }
//////                    }
////                }
//                .navigationBarTitle("Task List")
//                .navigationBarTitleDisplayMode(.automatic)
//                .navigationBarItems(trailing:VStack {
//                    Button(action: {
//                        shouldAddNewTask = true
//                    }, label: {
//                        Image(systemName: "text.badge.plus")
//                    })
//                })
//        }
//        .accentColor(.black)
//        .onAppear {
//            homeViewModel.$taskList.app
//        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
