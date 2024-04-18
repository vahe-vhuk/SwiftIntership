import SwiftUI



struct ContentView: View {
    @State var count: Int = 0

    var body: some View {
        VStack {
            Template(count: $count)
            
            Spacer()
            
            Controller(count: $count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
