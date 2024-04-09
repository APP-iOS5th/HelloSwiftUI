import SwiftUI


struct ContentView: View {
    @State private var message: String = ""
    @State private var password: String = ""
    @FocusState var dismissKeyboard: Bool
    var body: some View {
        VStack {
            
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .padding()
                .submitLabel(.done)
                .focused($dismissKeyboard)
            
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
            TextEditor(text: $message)
            
            Button("Hide Keyboard") {
                dismissKeyboard = false
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
