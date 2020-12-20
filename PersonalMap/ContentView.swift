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
                    Image(systemName: "square.stack.3d.up")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
                    Image(systemName: "car")
                        .padding(8)
                        .background(Color("Button-blue"))
                        .cornerRadius(5)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5)
                                .stroke(Color.blue, lineWidth: 2))
                }
                Button(action: {}) {
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


//struct ActionSheetSample: View {
//    @State private var isShowActionSheet: Bool =
//        false
//    var body: some View {
//        Button(action: {
//            //アクションシートを表示
//            isShowActionSheet = true
//        }) {
//            Image(systemName: "car")
//                .resizable()
//                .aspectRatio(contentMode: .fit)
//                .frame(width: 60, height: 60)
//        }
//        .actionSheet(isPresented: $isShowActionSheet)
//        { () -> ActionSheet in ActionSheet(title: Text("新規データ登録"),message: Text("地図に登録するデータの種類を選択してください。"),
//                                           buttons: [
//                                            .default(Text("ポイント"),action: {
//                                                print("ポイントを選んだ")
//                                            }),
//                                            .default(Text("ライン"),action: {
//                                                print("ラインを選んだ")
//                                            }),.default(Text("エリア"),action: {
//                                                print("エリアを選んだ")
//                                            }),
//                                            .cancel(Text("選択しない"),action: {
//                                                print("選択しない")
//                                            })
//                                           ])
//        }
//    }
//}
