//
//  LogIn.swift
//  fireBaseSwiftUIProject
//
//  Created by Ainur on 13.04.2024.
//

import SwiftUI
import Firebase


struct LogIn: View {
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
            Text("LogIn")
                .font(.title)
                .bold()
            HStack {
                Image(systemName: "mail")
                TextField("Email", text:  $email)
                
                Spacer()
                
                Image(systemName: "checkmark")
                    .bold()
                    .foregroundColor(.green)
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
                
                Image(systemName: "checkmark")
                    .bold()
                    .foregroundColor(.green)
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
                Text("You dont have account?")
                    .foregroundColor(.black)
                    .bold()
            }
            
            Spacer()
        }
    }
}
#Preview {
    LogIn()
}
