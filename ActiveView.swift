//
//  ActiveView.swift
//  ActivoVo
//
//  Created by Turma01-23 on 23/05/24.
//

import SwiftUI

struct ActivitiesView: View {
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Welcome to ActivoVo!")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading)
                    Spacer()
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                        .padding(.trailing)
                }
                .padding(.top)
                
                Text("Today's Achievements")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top)
                    .padding(.bottom, 10)
                
                VStack(alignment: .leading, spacing: 15) {
                    AchievementRow(text: "Completed 10 minutes of personalized exercise", isChecked: true)
                    AchievementRow(text: "Remembered to take medication", isChecked: true)
                    AchievementRow(text: "Enjoyed a healthy breakfast", isChecked: true)
                    AchievementRow(text: "Stayed hydrated throughout the day", isChecked: false)
                    AchievementRow(text: "Engaged in a social activity", isChecked: false)
                    AchievementRow(text: "Relaxed with a guided meditation session", isChecked: false)
                }
                .padding()
                .background(Color(UIColor.systemGray6))
                .cornerRadius(15)
                .padding(.horizontal)
                
                Spacer()
                
                HStack {
                    Spacer()
                    NavigationLink(destination: ContentView()) {
                        Image(systemName: "house")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: RemindersView()) {
                        Image(systemName: "plus.circle.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .padding()
                    }
                    Spacer()
                    NavigationLink(destination: ExerciseView()) {
                        Image(systemName: "play.circle")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .padding()
                    }
                    Spacer()
                }
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 5)
            }
            .background(Color(UIColor.systemGray5))
            .edgesIgnoringSafeArea(.bottom)
        }
    }
}

struct AchievementRow: View {
    let text: String
    let isChecked: Bool
    
    var body: some View {
        HStack {
            Text(text)
                .font(.body)
                .foregroundColor(.black)
            Spacer()
            Image(systemName: isChecked ? "checkmark.square.fill" : "square")
                .foregroundColor(isChecked ? .green : .black)
        }
    }
}

//struct ContentView: View {
//    var body: some View {
//        Text("Content View")
//    }
//}
//
//struct RemindersView: View {
//    var body: some View {
//        Text("Reminders View")
//    }
//}
//
//struct ExerciseView: View {
//    var body: some View {
//        Text("Exercise View")
//    }
//}

#Preview {
    ActivitiesView()
}
