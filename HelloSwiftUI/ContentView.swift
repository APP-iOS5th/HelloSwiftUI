import SwiftUI


struct ContentView: View {
    @State private var message: String = ""
    @State private var password: String = ""
    var body: some View {
        VStack {
            
            TextField("Placeholder text", text: $message)
                .textFieldStyle(.roundedBorder)
                .disableAutocorrection(true)
                .textContentType(.emailAddress)
                .padding()
            
            
            SecureField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
                .padding()
            
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
    
