
import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.orange,Color.red], startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
               backgroundGradient
                    .ignoresSafeArea()
                VStack {
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(30)
                        .padding(.top)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea(edges: .bottom)
                }
                .navigationTitle("Welcome")
                .font(.title2)
                .toolbarColorScheme(.dark, for: .navigationBar)
            }
        }
    }
}

#Preview {
    ContentView()
}
