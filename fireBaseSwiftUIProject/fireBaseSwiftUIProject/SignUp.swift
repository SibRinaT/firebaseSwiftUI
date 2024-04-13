//
//  ContentView.swift
//  fireBaseSwiftUIProject
//
//  Created by Ainur on 15.03.2024.
//

import SwiftUI
import FirebaseCore
import FirebaseAuth

//import FirebaseAuth  //not work

struct SignUp: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        VStack {
            Image("SwiftIcon")
                .resizable()
                .frame(width: 200, height: 130)
            Image("FirebaseIcon")
                .resizable()
                .frame(width: 250, height: 140)
            Text("Registration")
                .font(.title)
                .bold()
            HStack {
                Image(systemName: "mail")
                TextField("Email", text:  $email)
                
                Spacer()
                if (email.count != 0) {
                    Image(systemName: "checkmark")
                        .bold()
                        .foregroundColor(.green)
                }
            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(. black)
            )
            .padding()
            
            HStack {
                Image(systemName: "lock")
                TextField("Password", text:  $password)
                
                Spacer()
                if (password.count != 0) {
                    Image(systemName: "checkmark")
                        .bold()
                        .foregroundColor(.green)
                }

            }
            .padding()
            .overlay(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(lineWidth: 2)
                    .foregroundColor(. black)
            )
            .padding()
            
            Button(action: {
                
            }) {
                Text("Do you have account?")
                    .foregroundColor(.black)
                    .bold()
            }
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Text("Button")
                    .foregroundColor(.white)
                    .bold()
                
                    .frame(maxWidth: .infinity)
                    .padding()
                
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                    )
            })
            .padding(.horizontal)
        }
    }
    func register() {
        Auth.auth().createUser(withEmail: email, password: password) {              result, error in
            if error != nil {
                print(error?.localizedDescription)
            }
        }
    }
}

#Preview {
    SignUp()
}
