

import SwiftUI

struct menus: View {
    @State private var selectedOption: String = "🇦🇪 AED"
    var body: some View {

        Menu {
             Button("Option 1", action: { selectedOption = "Option 1" })
             Button("Option 2", action: { selectedOption = "Option 2" })
             Button("Option 3", action: { selectedOption = "Option 3" })
           }
        label:
            {
                HStack{
                    Text(selectedOption)
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
         }
    }


#Preview {
    menus()
}
