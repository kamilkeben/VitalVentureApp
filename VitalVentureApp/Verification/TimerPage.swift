import SwiftUI

struct TimerPage: View {
    
    @Binding var canResendCode: Bool
    @State private var timeRemaining: TimeInterval = 10
    @State private var timer: Timer?
    @State private var isRunning:  Bool = false
    
    var body: some View {
        Text(formattedTime())
            .font(.system(size: 16))
            .fontWeight(.bold)
            .onAppear {
                startTimer()
            }
    }
        
    private func formattedTime() -> String {
        let minutes = Int(timeRemaining) / 60
        let seconds = Int(timeRemaining) % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }
    
    private func startTimer() {
        isRunning = true
        canResendCode = false
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                stopTimer()
                canResendCode = true
            }
        }
    }
    
    private func stopTimer() {
        isRunning = false
        timer?.invalidate()
        timer = nil
    }
}

#Preview {
    TimerPage(canResendCode: .constant(false))
}
