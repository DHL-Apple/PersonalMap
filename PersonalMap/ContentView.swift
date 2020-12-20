import SwiftUI
import MapKit

struct ContentView: View {
    
    @State var locations: [CLLocationCoordinate2D] = []
    
    var body: some View {
        ZStack(alignment: .topLeading){
            MapView(locations: $locations) { location in
                print(location)
            }
            HStack{
                Button(action: {}) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color.blue, lineWidth: 2))
                }
            }
            .padding(.top, 48)
            .padding(.leading,32)

        }
        
        
        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
        .ignoresSafeArea(.all, edges: .all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
