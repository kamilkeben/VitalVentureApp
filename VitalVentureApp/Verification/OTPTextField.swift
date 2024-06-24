import SwiftUI

struct OTPTextField: View {
    
    let numberOfFields: Int
    
    @State private var enterValue: [String]
    @FocusState private var fieldFocus: Int?
    @State private var oldValue = ""
    
    init(numberOfFields: Int) {
        self.numberOfFields = numberOfFields
        self._enterValue = State(initialValue: Array(repeating: "", count: numberOfFields))
    }
    
    var body: some View {
        HStack {
            ForEach(0..<numberOfFields, id: \.self) { index in
                
                TextField("", text: $enterValue[index], onEditingChanged: { editing in
                    if editing {
                        oldValue = enterValue[index]
                    }
                })
                .keyboardType(.numberPad)
                .frame(width: 48, height: 48)
                .background(Color.gray.opacity(0.1))
                .cornerRadius(5)
                .multilineTextAlignment(.center)
                .focused($fieldFocus, equals: index)
                .tag(index)
                .onChange(of: enterValue[index]) { newValue in
                    if enterValue[index].count > 1 {
                        let currentValue = Array(enterValue[index])
                        
                        if currentValue[0] == Character(oldValue) {
                            enterValue[index] = String(enterValue[index].suffix(1))
                        } else {
                            enterValue[index] = String(enterValue[index].prefix(1))
                        }
                    }
                    
                    if !newValue.isEmpty {
                        if index == numberOfFields - 1 {
                            fieldFocus = nil
                        } else {
                            fieldFocus = (fieldFocus ?? 0) + 1
                        }
                    } else {
                        fieldFocus = (fieldFocus ?? 0) - 1
                    }
                }
            }
        }
    }
}

#Preview {
    OTPTextField(numberOfFields: 6)
}
