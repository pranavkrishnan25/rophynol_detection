//import SwiftUI
//
//struct CirclesView: View {
//    var body: some View {
//        NavigationView {
//            ZStack {
//                let backgroundGradient = LinearGradient(
//                    colors: [Color.white, Color.purple, Color.indigo],
//                    startPoint: .top, endPoint: .bottom)
//
//                backgroundGradient.edgesIgnoringSafeArea(.all)
//
//                VStack {
//                    Spacer()
//
//                    NavigationLink(destination: MapView()) {
//                        CircleButton(title: "HoJo Friends", color: Color.gray.opacity(0.55))
//                    }
//
//                    CircleButton(title: "Friends from Home", color: Color.gray.opacity(0.55))
//
//                    CircleButton(title: "Friday Night Fun", color: Color.gray.opacity(0.55))
//
//                    Spacer()
//                }
//
//                VStack {
//                    Spacer()
//
//                    NavigationLink(destination: Text("Create a new Family Circle")) {
//                        Text("+ Create a new Family Circle")
//                            .padding()
//                            .frame(maxWidth: .infinity)
//                            .background(Color.gray.opacity(0.55))
//                            .foregroundColor(.white)
//                            .font(.custom("Times New Roman", size: 20))
//                            .cornerRadius(10)
//                            .padding(.horizontal)
//                            .padding(.bottom, 16)
//                    }
//                }
//            }
//            .navigationBarTitleDisplayMode(.inline)
//            .toolbar {
//                ToolbarItem(placement: .principal) {
//                    VStack(spacing: 10) {
//                        Text("ATHENA")
//                            .font(.custom("Times New Roman", size: 30))
//                            .fontWeight(.bold)
//                            .foregroundColor(.black)
//
//                        Text("Circles")
//                            .font(.custom("Times New Roman", size: 28))
//                            .foregroundColor(.white)
//                            .padding(10)
//                            .background(Color.gray.opacity(0.7))
//                            .clipShape(Capsule())
//                    }
//                    .padding(.top, 50)
//                }
//            }
//        }
//    }
//}
//
//struct CircleButton: View {
//    let title: String
//    let color: Color
//
//    var body: some View {
//        Text(title)
//            .padding()
//            .frame(maxWidth: .infinity)
//            .background(color)
//            .foregroundColor(.white)
//            .font(.custom("Times New Roman", size: 18))
//            .cornerRadius(10)
//            .padding(.horizontal)
//            .padding(.vertical, 5)
//    }
//}
//
//struct CirclesView_Previews: PreviewProvider {
//    static var previews: some View {
//        CirclesView()
//    }
//}
//
import SwiftUI

struct CirclesView: View {
    var body: some View {
        NavigationView {
            ZStack {
                let backgroundGradient = LinearGradient(
                    colors: [Color.white, Color.purple, Color.indigo],
                    startPoint: .top, endPoint: .bottom)
                
                backgroundGradient.edgesIgnoringSafeArea(.all)
                
                VStack {
                    Spacer()
                    
                    NavigationLink(destination: MapView()) {
                        CircleButton(title: "HoJo Friends", color: Color.gray.opacity(0.55), filledStar: true)
                    }
                    
                    CircleButton(title: "Friends from Home", color: Color.gray.opacity(0.55), filledStar: false)
                    
                    CircleButton(title: "Friday Night Fun", color: Color.gray.opacity(0.55), filledStar: false)
                    
                    Spacer()
                }
                
                VStack {
                    Spacer()
                    
                    NavigationLink(destination: Text("Create a new Family Circle")) {
                        Text("+ Create a new Family Circle")
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(Color.gray.opacity(0.55))
                            .foregroundColor(.white)
                            .font(.custom("Times New Roman", size: 20))
                            .cornerRadius(10)
                            .padding(.horizontal)
                            .padding(.bottom, 16)
                    }
                }
            }
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .principal) {
                    VStack(spacing: 10) {
                        Text("ATHENA")
                            .font(.custom("Times New Roman", size: 30))
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                        
                        Text("Circles")
                            .font(.custom("Times New Roman", size: 28))
                            .foregroundColor(.white)
                            .padding(10)
                            .background(Color.gray.opacity(0.7))
                            .clipShape(Capsule())
                    }
                    .padding(.top, 50)
                }
            }
        }
    }
}

struct CircleButton: View {
    let title: String
    let color: Color
    let filledStar: Bool
    
    var body: some View {
        HStack {
            Image(systemName: filledStar ? "star.fill" : "star")
                .foregroundColor(.white)
                .padding(.leading)
            
            Text(title)
                .padding()
                .frame(maxWidth: .infinity)
                .background(color)
                .foregroundColor(.white)
                .font(.custom("Times New Roman", size: 18))
                .cornerRadius(10)
                .padding(.horizontal)
                .padding(.vertical, 5)
        }
    }
}

struct CirclesView_Previews: PreviewProvider {
    static var previews: some View {
        CirclesView()
    }
}
