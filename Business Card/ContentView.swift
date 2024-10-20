//
//  ContentView.swift
//  Business Card
//
//  Created by Aavhan Chatse on 30/09/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.09, green: 0.63, blue: 0.52)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/ .all/*@END_MENU_TOKEN@*/)

            VStack {
                Image("aavhan")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))

                Text("Aavhan Chatse")
                    .bold()
                    .font(/*@START_MENU_TOKEN@*/ .title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)

                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))

                Divider()

                InfoView(text: "+91 7083530669", imageName: "phone.fill")

                InfoView(text: "chatseaavhan@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

#Preview {
    ContentView()
}
