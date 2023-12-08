//
//  ProfileView.swift
//  InstagramTutorial
//
//  Created by Samar Chandra on 06/12/23.
//

import SwiftUI

struct ProfileView: View {
    private let gridItems: [GridItem] = [
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    ]
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 10) {
                    HStack {
                        Image("Saitama")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80,height: 80)
                            .clipShape(Circle())
                        Spacer()
                        HStack(spacing: 8) {
                            UserStatView(value: 3, title: "Posts")
                            UserStatView(value: 3, title: "Followers")
                            UserStatView(value: 3, title: "Following")                    }
                        .padding(.horizontal)
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    .padding(.bottom, 4)
                    
                    VStack(alignment: .leading, spacing: 4){
                        Text("Samar Chandra")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Text("Imperius Rex")
                            .font(.footnote)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Edit Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1))
                        })
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Text("Share Profile")
                                .font(.subheadline)
                                .fontWeight(.semibold)
                                .frame(maxWidth: .infinity)
                                .frame(height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1))
                        })
                        Spacer()
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "person.badge.plus")
                                .accentColor(.black)
                                .frame(width:32 ,height: 32)
                                .foregroundColor(.black)
                                .overlay(
                                    RoundedRectangle(cornerRadius: 6)
                                        .stroke(Color.gray, lineWidth: 1))
                        })
                    }
                    .frame(maxWidth: .infinity)
                    .padding(.horizontal)
                    Divider()
                }
                VStack(alignment: .leading) {
                    HStack {
                        Text("Story Highlights")
                            .font(.footnote)
                            .fontWeight(.semibold)
                        Spacer()
                        Image(systemName: "chevron.up")
                    }
                    
                    Text("Keep your favourite stories on your profile")
                        .font(.footnote)
                    ScrollView(.horizontal){
                            HStack(spacing: 25){
                                VStack {
                                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                                        Image(systemName: "plus")
                                            .frame(width: 70, height: 70)
                                            .accentColor(.black)
                                    })
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 35)
                                            .stroke(Color.gray, lineWidth: 2))
                                    .padding(1)
                                }
                                ForEach(0 ... 3, id: \.self) { index in
                                    Circle()
                                        .strokeBorder(Color("lightGrey"),lineWidth: 4)
                                        .background(Circle().foregroundColor(Color("lightGrey")))
                                        .frame(width: 70, height: 70)
                                }
                            }
//                            Text("New")
//                                .font(.footnote)
//                                .frame(maxWidth: .infinity, alignment: .leading)
//                                .padding(.horizontal)
                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
                VStack{
                    HStack{
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image(systemName: "squareshape.split.3x3")
                                .accentColor(.black)
                                .font(.system(size: 32, weight: .light))
                        })
                        .frame(maxWidth:.infinity)
                        Button(action: {}, label: {
                            Image("reelIcon")
                                .resizable()
                                .frame(width: 32, height: 32)
                        })
                        .frame(maxWidth:.infinity)
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                            Image("instagram-tag-icon")
                                .resizable()
                                .frame(width: 32, height: 32)
                        })
                        .frame(maxWidth:.infinity)
                    }
                    .frame(maxWidth:.infinity)
                }
                .padding()
                LazyVGrid(columns: gridItems, spacing: 1) {
                    ForEach(0 ... 15, id: \.self) { index in
                        Image("postSaitama")
                            .resizable()
                            .scaledToFill()
                            .clipped()
                    }
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .accentColor(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

extension Color {
    init(hex: String) {
        var cleanHexCode = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        cleanHexCode = cleanHexCode.replacingOccurrences(of: "#", with: "")
        print(cleanHexCode)
        var rgb: UInt64 = 0
        
        Scanner(string: cleanHexCode).scanHexInt64(&rgb)
        
        let redValue = Double((rgb >> 16) & 0xFF) / 255.0
        let greenValue = Double((rgb >> 8) & 0xFF) / 255.0
        let blueValue = Double(rgb & 0xFF) / 255.0
        self.init(red: redValue, green: greenValue, blue: blueValue)
    }
}
