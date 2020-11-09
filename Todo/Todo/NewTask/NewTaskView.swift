//
//  NewTaskView.swift
//  Todo
//
//  Created by Denny Mathew on 09/11/20.
//

import SwiftUI
struct NewTaskView: View {
    @State private var date: Date = Date()
    @State private var name: String = ""
    var task: Task {
        Task(title: name, date: date, isDone: false)
    }
    var body: some View {
        ZStack {
            Color(.darkGray).ignoresSafeArea(.all)
            VStack {
                HStack(alignment: .center, spacing: 30.0) {
                    VStack {
                        Text("10")
                            .fontWeight(.black)
                            .foregroundColor(.white)
                        Text("Nov")
                            .fontWeight(.medium)
                            .foregroundColor(.white)
                    }
                    .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                    Text("New task")
                        .fontWeight(.bold)
                        .frame(maxWidth: .infinity)
                        .foregroundColor(.white)
                    Button(action: {
                        print("Should close here!")
                    }) {
                        Image(systemName: "xmark")
                    }
                    .padding(EdgeInsets(top: 0, leading: 24, bottom: 0, trailing: 24))
                }
                .frame(width: UIScreen.main.bounds.width, height: 40.0, alignment: .center)
                VStack(spacing: 25) {
                    Text("Task Name")
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.callout)
                    TextField("Do laundry", text: $name)
                        .foregroundColor(.white)
                        .font(Font.largeTitle)
                }
                .padding(EdgeInsets(top: 40, leading: 24, bottom: 40, trailing: 24))
                Button(action: {
                    print("Add task here")
                }) {
                    Text("Add Task")
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .font(.headline)
                        .padding(EdgeInsets(top: 12, leading: 24, bottom: 12, trailing: 24))
                }
                .background(Color.white)
                .clipShape(Capsule())
                .shadow(color: Color.black.opacity(0.6), radius: 6)
            }
        }
    }
}

struct NewTaskView_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskView()
    }
}
