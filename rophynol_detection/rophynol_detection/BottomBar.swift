import SwiftUI

struct BottomBar: View {
    var body: some View {
        HStack {
            VStack {
                Image(systemName: "gear")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Settings")
                    .font(.custom("Times New Roman", size: 14))
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.gray.opacity(0.5))
            .clipShape(Circle())

            Spacer()

            VStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("Profile")
                    .font(.custom("Times New Roman", size: 14))
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.gray.opacity(0.5))
            .clipShape(Circle())

            Spacer()

            VStack {
                Image(systemName: "questionmark.circle")
                    .resizable()
                    .frame(width: 25, height: 25)
                Text("How To")
                    .font(.custom("Times New Roman", size: 14))
            }
            .foregroundColor(.white)
            .padding()
            .background(Color.gray.opacity(0.5))
            .clipShape(Circle())
        }
        .padding()
    }
}

struct BottomBar_Previews: PreviewProvider {
    static var previews: some View {
        BottomBar()
    }
}

