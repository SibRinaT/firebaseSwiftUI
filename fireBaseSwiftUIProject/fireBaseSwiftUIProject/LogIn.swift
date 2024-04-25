//
//  LogIn.swift
//  fireBaseSwiftUIProject
//
//  Created by Ainur on 13.04.2024.
//

import SwiftUI
import Firebase
import FirebaseAuth

struct LogIn: View {
    @State private var email = ""
    @State private var password = ""
    @AppStorage("uid") var userID: String = ""
    @State private var isDetailViewPresented = true


    
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
            
            NavigationLink(destination: SignUp()) {
                Text("You dont have account?")
                    .foregroundColor(.black)
                    .bold()
            }
            
            
            Spacer()
                      Button {
                          Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                              if let error = error {
                                  print(error)
                                  return
                              }
                              if let authResult = authResult {
                                  print(authResult.user.uid)
                                  withAnimation {
                                      userID = authResult.user.uid
                                      MainView()
                                  }
                              }
                          }
                      } label: {
                          Text("Sign In")
                              .foregroundColor(.white)
                              .font(.title3)
                              .bold()
                          
                              .frame(maxWidth: .infinity)
                              .padding()
                          
                              .background(
                                  RoundedRectangle(cornerRadius: 10)
                                      .fill(Color.black)
                              )
                              .padding(.horizontal)
                      }
                      .sheet(isPresented: $isDetailViewPresented) {
                          // Выводим другую вьюшку, когда флаг isDetailViewPresented равен true
                          SignUp()
                      }
        }
    }
//    func LogIn() {
//
//            // ...
//        }
//    }
}
#Preview {
    NavigationView {
        LogIn()
    }
}
