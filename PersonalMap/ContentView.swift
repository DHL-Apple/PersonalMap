import SwiftUI
import MapKit


struct ContentView: View {
    
    @State private var showingAlert = false
    @State var selectedLocation: CLLocationCoordinate2D?
    
    @State var locations: [CLLocationCoordinate2D] = []
    //.standard　.satellite .hybrid　で切替る
    @State var mapType: MKMapType = .standard
    
    @State private var isShowActionSheet: Bool = false
    @State var pointModal: Bool = false
    
    var body: some View {
        ZStack(alignment: .topLeading){
            MapView(locations: $locations, mapType: $mapType) { location in
                self.selectedLocation = location
                self.showingAlert = true
                print(location)
                pointModal = true
            }
            
//-------------------------------------------------------------------------------------------------------
            
            HStack{
                Button(action: {
                    isShowActionSheet = true
                }) {
                    Image(systemName: "plus.rectangle.on.rectangle")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                .actionSheet(isPresented: $isShowActionSheet)
                { () -> ActionSheet in ActionSheet(title: Text("新規データ登録"),message: Text("地図に登録するデータの種類を選択してください。"),
                            buttons: [.default(Text("ポイント"),action: {
                                                        // print("ポイントを選んだ")
                                                        self.showingAlert = true
                                                    }),
                            .default(Text("ライン"),action: {
                                                        print("ラインを選んだ")
                                                    }),
                            .default(Text("エリア"),action: {
                                                        print("エリアを選んだ")
                                                    }),
                            .cancel(Text("選択しない"),action: {
                                                        print("選択しない")
                                                    })
                                                   ])
                }
                .alert(isPresented: $showingAlert) {
                    Alert(title: Text("新規データ登録"), message: Text("新規ポイントをタップしてください。"), dismissButton: .default(Text("説明を閉じる"), action: {}

                    ))}
                .sheet(isPresented: $pointModal, content: {
                    PointView()
                })
                
                Button(action: {}) {
                    Image(systemName: "square.stack.3d.up")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {mapType = .standard}) {
                    Image(systemName: "car")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                
                Button(action: {mapType = .hybrid}) {
                    Image(systemName: "airplane")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "lightbulb")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "lightbulb.fill")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "gearshape")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
            }
            .padding(.top, -350.0)
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .ignoresSafeArea(.all, edges: .all)
            
            
            
            .onAppear {
                let location = CLLocationCoordinate2D(latitude: CLLocationDegrees(34.4238), longitude: CLLocationDegrees(132.7439))
                locations.append(location)
            }
            
            
            .alert(isPresented: $showingAlert) {
                Alert(
                    title: Text(""),
                    message: Text("latitude: \(selectedLocation?.latitude ?? -1), longitude: \(selectedLocation?.longitude ?? -1)"),
                    primaryButton: .default(Text("OK")) {
                        guard let location = selectedLocation else {
                            return
                        }
                        self.addLocation(location: location)
                    }, secondaryButton: .cancel())
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxHeight: .infinity)
            .ignoresSafeArea(.all, edges: .all)
        }
        
    }
    private func addLocation(location: CLLocationCoordinate2D) {
        locations.append(location)
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
