
import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.orange,Color.red], startPoint: .top, endPoint: .bottom)

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
               backgroundGradient
                    .ignoresSafeArea()
                VStack (alignment: .leading){
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(30)
                        .padding(.top)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea(edges: .bottom)
                        .overlay(starOverlay)
                }
                .navigationTitle("Welcome")
                .font(.title)
                .toolbarColorScheme(.dark, for: .navigationBar)
            }
        }
    }
}

private var starOverlay: some View {
    VStack(alignment: .leading){
        Text("Exchange rate")
            .frame(maxWidth: .infinity,alignment: .leading)
            .font(.title2)
            .bold()
        Spacer()
    }
    .padding(.top, 60)
    .padding(.leading, 20)
   }

#Preview {
    ContentView()
}
