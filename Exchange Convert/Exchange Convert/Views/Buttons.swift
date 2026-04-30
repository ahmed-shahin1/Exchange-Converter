

import SwiftUI
import FlagKit

struct Buttons: View {
    @State private var selectedCurrency: String = "AED"
    @State private var showSheet: Bool = false
    var body: some View {
        
        Button{
            showSheet.toggle()
        }
        
        label:
         {
                HStack{
                    Image(uiImage: Flag(countryCode: "AE")!.image(style: .roundedRect))
                       Text("AED")
                           .bold()
                           .foregroundStyle(Color.black)
                    Spacer()
                    Image(systemName: "chevron.down")
                        .foregroundStyle(Color.gray)
                }
                .padding()
                .background(Color.gray.opacity(0.1))
                .cornerRadius(200)
                .frame(maxWidth: .infinity)
            }
             .sheet(isPresented: $showSheet){
                 MyNextView()
             }
         }
    
    
    
    struct MyNextView: View {
        var body: some View {
            Text("Hello World")
            
            
        }
        
    }
    
    
}


#Preview {
    Buttons()
}
