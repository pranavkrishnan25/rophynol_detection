//import SwiftUI
//import MapKit
//
//struct MapView: View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    @State private var isUserListOpen = false
//    @State private var offsetY: CGFloat = 20
//
//    let users: [User] = [
//        User(name: "Stacy", coordinate: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), status: "Going Out"),
//        User(name: "Jose", coordinate: CLLocationCoordinate2D(latitude: 35.9049, longitude: -79.0469), status: "At Home"),
//        User(name: "Priya", coordinate: CLLocationCoordinate2D(latitude: 35.9110, longitude: -79.0516), status: "Unavailable"),
//        User(name: "John", coordinate: CLLocationCoordinate2D(latitude: 35.8997, longitude: -79.0123), status: "Going Out")
//    ]
//
//    var body: some View {
//        ZStack {
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: users) { user in
//                MapAnnotation(coordinate: user.coordinate) {
//                    VStack {
//                        Text(user.name)
//                            .font(.caption)
//                            .foregroundColor(.white)
//                            .padding(2)
//                            .background(Color.black.opacity(0.7))
//                            .cornerRadius(5)
//
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 20, height: 20)
//                    }
//                }
//            }
//            .edgesIgnoringSafeArea(.all)
//
//            VStack {
//                Spacer()
//                SlidingScreen(isOpen: $isUserListOpen, offsetY: $offsetY, maxHeight: UIScreen.main.bounds.height * 0.6, minHeight: 20) {
//                    UserList(users: users)
//                        .padding(.bottom)
//                }
//            }
//            .edgesIgnoringSafeArea(.bottom)
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                Text("Map")
//                    .font(.custom("Times New Roman", size: 24))
//                    .foregroundColor(.white)
//            }
//        }
//    }
//}
//
//struct User: Identifiable, Equatable, Hashable {
//    let id = UUID()
//    let name: String
//    let coordinate: CLLocationCoordinate2D
//    let status: String
//
//    static func == (lhs: User, rhs: User) -> Bool {
//        lhs.id == rhs.id
//    }
//
//    func hash(into hasher: inout Hasher) {
//        hasher.combine(id)
//    }
//}
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView()
//    }
//}


//import SwiftUI
//import MapKit
//
//struct MapView: View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    @State private var offsetY: CGFloat = UIScreen.main.bounds.height - 40
//
//    let users: [User] = [
//        User(name: "Stacy", coordinate: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), status: "Going Out"),
//        User(name: "Jose", coordinate: CLLocationCoordinate2D(latitude: 35.9049, longitude: -79.0469), status: "At Home"),
//        User(name: "Priya", coordinate: CLLocationCoordinate2D(latitude: 35.9110, longitude: -79.0516), status: "Unavailable"),
//        User(name: "John", coordinate: CLLocationCoordinate2D(latitude: 35.8997, longitude: -79.0123), status: "Going Out")
//    ]
//
//    var body: some View {
//        ZStack {
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: users) { user in
//                MapAnnotation(coordinate: user.coordinate) {
//                    VStack {
//                        Text(user.name)
//                            .font(.caption)
//                            .foregroundColor(.white)
//                            .padding(2)
//                            .background(Color.black.opacity(0.7))
//                            .cornerRadius(5)
//
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 20, height: 20)
//                    }
//                }
//            }
//            .edgesIgnoringSafeArea(.all)
//            .gesture(DragGesture()
//                        .onChanged { value in
//                            let yOffset = offsetY + value.translation.height
//                            offsetY = min(max(yOffset, UIScreen.main.bounds.height * 0.4), UIScreen.main.bounds.height - 40)
//                        }
//                        .onEnded { _ in
//                            offsetY = offsetY < UIScreen.main.bounds.height * 0.6 ? UIScreen.main.bounds.height * 0.4 : UIScreen.main.bounds.height - 40
//                        }
//            )
//
//            VStack {
//                Spacer()
//                UserList(users: users)
//                    .padding(.bottom)
//                    .frame(height: UIScreen.main.bounds.height * 0.6)
//                    .background(Color.gray.opacity(0.5))
//                    .cornerRadius(16)
//                    .offset(y: offsetY)
//            }
//            .edgesIgnoringSafeArea(.bottom)
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                Text("Map")
//                    .font(.custom("Times New Roman", size: 24))
//                    .foregroundColor(.white)
//            }
//        }
//    }
//}


//import SwiftUI
//import MapKit
//
//struct MapView: View {
//    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
//    @State private var offsetY: CGFloat = UIScreen.main.bounds.height - 40
//
//    let users: [User] = [
//        User(name: "Stacy", coordinate: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), status: "Going Out"),
//        User(name: "Jose", coordinate: CLLocationCoordinate2D(latitude: 35.9049, longitude: -79.0469), status: "At Home"),
//        User(name: "Priya", coordinate: CLLocationCoordinate2D(latitude: 35.9110, longitude: -79.0516), status: "Unavailable"),
//        User(name: "John", coordinate: CLLocationCoordinate2D(latitude: 35.8997, longitude: -79.0123), status: "Going Out")
//    ]
//
//    var body: some View {
//        ZStack {
//            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: users) { user in
//                MapAnnotation(coordinate: user.coordinate) {
//                    VStack {
//                        Text(user.name)
//                            .font(.caption)
//                            .foregroundColor(.white)
//                            .padding(2)
//                            .background(Color.black.opacity(0.7))
//                            .cornerRadius(5)
//
//                        Circle()
//                            .fill(Color.blue)
//                            .frame(width: 20, height: 20)
//                    }
//                }
//            }
//            .edgesIgnoringSafeArea(.all)
//            .gesture(DragGesture()
//                        .onChanged { value in
//                            let yOffset = offsetY + value.translation.height
//                            offsetY = min(max(yOffset, UIScreen.main.bounds.height * 0.4), UIScreen.main.bounds.height - 40)
//                        }
//                        .onEnded { _ in
//                            offsetY = offsetY < UIScreen.main.bounds.height * 0.6 ? UIScreen.main.bounds.height * 0.4 : UIScreen.main.bounds.height - 40
//                        }
//            )
//
//            VStack {
//                Spacer()
//                UserList(users: users)
//                    .padding(.bottom)
//                    .frame(height: UIScreen.main.bounds.height * 0.6)
//                    .background(Color.gray.opacity(0.5))
//                    .cornerRadius(16)
//                    .offset(y: offsetY)
//            }
//            .edgesIgnoringSafeArea(.bottom)
//        }
//        .navigationBarTitleDisplayMode(.inline)
//        .toolbar {
//            ToolbarItem(placement: .principal) {
//                Text("Map")
//                    .font(.custom("Times New Roman", size: 24))
//                    .foregroundColor(.white)
//            }
//        }
//    }
//}


import SwiftUI
import MapKit

struct MapView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), span: MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01))
    @GestureState private var offsetY: CGFloat = 0

    let users: [User] = [
        User(name: "Stacy", coordinate: CLLocationCoordinate2D(latitude: 35.9132, longitude: -79.0558), status: "Going Out"),
        User(name: "Jose", coordinate: CLLocationCoordinate2D(latitude: 35.9049, longitude: -79.0469), status: "At Home"),
        User(name: "Priya", coordinate: CLLocationCoordinate2D(latitude: 35.9110, longitude: -79.0516), status: "Unavailable"),
        User(name: "John", coordinate: CLLocationCoordinate2D(latitude: 35.8997, longitude: -79.0123), status: "Going Out")
    ]

    var body: some View {
        ZStack {
            Map(coordinateRegion: $region, interactionModes: .all, showsUserLocation: true, annotationItems: users) { user in
                MapAnnotation(coordinate: user.coordinate) {
                    VStack {
                        Text(user.name)
                            .font(.caption)
                            .foregroundColor(.white)
                            .padding(2)
                            .background(Color.black.opacity(0.7))
                            .cornerRadius(5)

                        Circle()
                            .fill(Color.blue)
                            .frame(width: 20, height: 20)
                    }
                }
            }
            .edgesIgnoringSafeArea(.all)

            VStack {
                Text("ATHENA")
                    .font(.custom("Times New Roman", size: 30))
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                    .padding(.top, 5)
                Spacer()
            }

            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Image(systemName: "chevron.up")
                        .resizable()
                        .frame(width: 24, height: 14)
                        .foregroundColor(.gray)
                        .padding(.bottom, 4)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
                .background(Color.gray.opacity(0.5))
                .cornerRadius(10)
                .offset(y: offsetY)
                .gesture(
                    DragGesture(minimumDistance: 10)
                        .updating($offsetY) { value, state, _ in
                            state = max(0, value.translation.height)
                        }
                        .onEnded { value in
                            if value.translation.height > 200 {
                                offsetY = UIScreen.main.bounds.height * 0.6
                            } else {
                                offsetY = 0
                            }
                        }
                )
                UserList(users: users)
            }
            .background(Color.gray.opacity(0.5))
            .cornerRadius(10)
            .offset(y: offsetY)
            .animation(.spring(), value: offsetY)
            .edgesIgnoringSafeArea(.bottom)
            .padding(.bottom, -30)
        }
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .principal) {
                Text("Map")
                    .font(.custom("Times New Roman", size: 24))
                    .foregroundColor(.white)
            }
        }
    }
}
struct User: Identifiable, Equatable, Hashable {
    let id = UUID()
    let name: String
    let coordinate: CLLocationCoordinate2D
    let status: String

    static func == (lhs: User, rhs: User) -> Bool {
        lhs.id == rhs.id
    }

    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
