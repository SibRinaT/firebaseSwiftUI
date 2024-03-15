//
//  ContentView.swift
//  fireBaseSwiftUIProject
//
//  Created by Ainur on 15.03.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Text("Log In")
                .font(.title)
                .bold()
            VStack {
                TextField("Email", text:  $email)
                TextField("Password", text:  $password)

            }
        }
        .padding(.horizontal)
    }
}

#Preview {
    ContentView()
}
