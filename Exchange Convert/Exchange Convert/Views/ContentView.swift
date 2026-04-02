
import SwiftUI

let backgroundGradient = LinearGradient(colors: [Color.orange,Color.red], startPoint: .leading, endPoint: .trailing)

struct ContentView: View {
    var body: some View {
        NavigationStack{
            ZStack {
               backgroundGradient
                    .ignoresSafeArea()
                VStack (){
                    Rectangle()
                        .fill(Color.white)
                        .cornerRadius(30)
                        .padding(.top)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .ignoresSafeArea(edges: .bottom)
                        .overlay(starOverlay)
                }
                .navigationTitle("Welcome")
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
        HStack(){
            menus()
            Image(systemName: "arrow.right")
                .font(.system(size: 20))
            menus()
        }
        Spacer()
    }
    .padding(.top, 60)
    .padding(.leading, 20)
    .padding(.trailing,20)
   }

#Preview {
    ContentView()
}
