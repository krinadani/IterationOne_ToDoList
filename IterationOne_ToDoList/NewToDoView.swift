//
//  NewToDoView.swift
//  IterationOne_ToDoList
//
//  Created by scholar on 6/20/23.
//

//** This file contains all the code for the "popup" screen where users can add their own ToDo Item**

import SwiftUI

struct NewToDoView: View {
    
    @State var title: String
    @State var isImportant: Bool
    @Binding var toDoItems: [ToDoItem]
    @Binding var showNewTask : Bool
    
    //Bind the ToDoItems array here

    //Bind the showNewTask property here
    
    var body: some View {
        VStack {
            
            Text("Task title:")
                .font(.title)
                .fontWeight(.bold)
            
            TextField("Enter the task description...", text: $title).padding()
                .background(Color(.systemGroupedBackground))
                    .cornerRadius(15)
                    .padding()
            
            Toggle(isOn: $isImportant) {
                Text("Is it important?")
                    .font(.system(size: 20))
            }
            .padding()
            
            Button(action: {
                self.showNewTask = false
                self.addTask(title: self.title, isImportant: self.isImportant)
                
            }) {
                Text("Add")
            }
            .padding()
        }
    }
    
    //Add the private function addTask here
    private func addTask(title: String, isImportant: Bool = false) {
            
            let task = ToDoItem(title: title, isImportant: isImportant)
            toDoItems.append(task)
        }
}

struct NewToDoView_Previews: PreviewProvider {
    static var previews: some View {
        NewToDoView(title: "", isImportant: false, toDoItems: .constant([]), showNewTask: .constant(true)
                    
        //Add toDoItems: .constant([]) here
        //Add showNewTask: .constant(true) here
        )
    }
}
