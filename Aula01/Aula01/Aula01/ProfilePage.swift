//
//  ProfilePage.swift
//  Aula01
//
//  Created by Turma02-17 on 06/06/24.
//

import SwiftUI

struct ProfilePage: View {
    var body: some View {
        VStack() {
            HStack(spacing: 30) {
                Image(.pato)
                    .resizable()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 100, height: 100)
                VStack() {
                    HStack(spacing: 25) {
                        VStack() {
                            Text("8")
                                .bold()
                            Text("Posts")
                        }
                        VStack() {
                            Text("12k")
                                .bold()
                            Text("Followers")
                        }
                        VStack() {
                            Text("2k")
                                .bold()
                            Text("Following")
                        }
                    }
                    Text("Edit Profile")
                        .background(Color.gray)
                        .padding(.top)
                }
            }
            .padding(.bottom)
            
            VStack() {
                Text("Nome Sobrenome")
                    .bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                Text("Lorem Ipslum")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
            }
            
            Spacer()
            
            VStack() {
                HStack(spacing: 100) {
                    Image(.bookmark)
                        .resizable()
                        .frame(width: 30, height: 30)
                    Image(.home)
                        .resizable()
                        .frame(width: 30, height: 30)
                    Image(.send)
                        .resizable()
                        .frame(width: 30, height: 30)
                }
            }
            Spacer()
            
            VStack() {
                HStack() {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                }
                HStack() {
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                    Rectangle()
                        .fill(.gray)
                        .frame(width: 120, height: 120)
                }
            }
            HStack() {
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
                Rectangle()
                    .fill(.gray)
                    .frame(width: 120, height: 120)
            }
        }
        Spacer()
    }
}

#Preview {
    ProfilePage()
}
