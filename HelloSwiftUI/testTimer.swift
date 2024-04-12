//
//  testTimer.swift
//  HelloSwiftUI
//
//  Created by 장예진 on 4/11/24.
import SwiftUI


struct ContentView1: View {
    @State private var totalSeconds = 0
    @State private var timerIsActive = false
    @State private var buttonPresses = 0

    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()

    var body: some View {
        VStack {
            Text(timeString(from: totalSeconds))
                .font(.largeTitle)
                .padding()

            Button(action: {
                self.buttonPressed()
            }) {
                Text(buttonTitle())
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(Color.blue)
                    .cornerRadius(20)
            }

            Menu {
                Button("1분 추가", action: { self.addTime(minutes: 1) })
                Button("3분 추가", action: { self.addTime(minutes: 3) })
                Button("5분 추가", action: { self.addTime(minutes: 5) })
                Button("10분 추가", action: { self.addTime(minutes: 10) })
            } label: {
                Text("Add")
                    .foregroundColor(.white)
                    .padding(.horizontal, 40)
                    .padding(.vertical, 20)
                    .background(Color.gray)
                    .cornerRadius(20)
            }
        }
        .onReceive(timer) { _ in
            if self.timerIsActive && self.totalSeconds > 0 {
                self.totalSeconds -= 1
            }
        }
    }
    
    func buttonPressed() {
        buttonPresses += 1
        
        switch buttonPresses {
        case 1:
            // Start
            self.timerIsActive = true
        case 2:
            // Stop
            self.timerIsActive = false
        case 3:
            // Reset
            self.timerIsActive = false
            self.totalSeconds = 0
            self.buttonPresses = 0
        default:
            break
        }
    }
    
    func buttonTitle() -> String {
        switch buttonPresses {
        case 0:
            return "Start"
        case 1:
            return "Stop"
        case 2:
            return "Reset"
        default:
            return "Start"
        }
    }
    
    func addTime(minutes: Int) {
        let addedSeconds = minutes * 60
        totalSeconds += addedSeconds
    }
    
    func timeString(from totalSeconds: Int) -> String {
        let hours = totalSeconds / 3600
        let minutes = (totalSeconds % 3600) / 60
        let seconds = (totalSeconds % 3600) % 60
        return String(format: "%02d:%02d:%02d", hours, minutes, seconds)
    }
}



#Preview {
    ContentView1()
}
