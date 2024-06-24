import SwiftUI

struct EditProfile: View {
    @State private var username: String = ""
    @State private var surname: String = ""
    @State private var location: String = ""
    @State private var phonenumber: String = ""
    @State private var isAvatarPickerPresented: Bool = false
    @State private var selectedImage: UIImage?
    @Environment(\.dismiss) private var dismiss

    let avatars: [String] = (1...10).map { "avatar\($0)" }

    var body: some View {
        NavigationStack {
            ZStack {
                VStack {
                    Spacer()
                    if let selectedImage = selectedImage {
                        Image(uiImage: selectedImage)
                            .resizable()
                            .frame(width: 96, height: 96)
                            .clipShape(Circle())
                            .padding(.bottom, 10)
                    } else {
                        Image("avatar")
                            .resizable()
                            .frame(width: 96, height: 96)
                            .clipShape(Circle())
                            .padding(.bottom, 10)
                    }

                    Text("Kamil")
                        .fontWeight(.medium)
                        .font(.system(size: 24))

                    Button(action: {
                        isAvatarPickerPresented.toggle()
                    }) {
                        Text("Profil Resmini Değiştir")
                            .font(.system(size: 18))
                            .fontWeight(.medium)
                            .foregroundColor(Color.orange)
                    }
                    .padding(.bottom, 30)
                    .sheet(isPresented: $isAvatarPickerPresented) {
                        AvatarPicker(avatars: avatars, selectedImage: $selectedImage)
                    }

                    HStack {
                        Text("İsim")
                            .font(.system(size: 18))
                        Spacer()
                    }

                    ZStack {
                        TextField("Kamil", text: $username)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(14)

                        HStack {
                            Spacer()
                            Image(systemName: "checkmark")
                                .padding()
                                .foregroundColor(Color.alertmessagecolor)
                        }
                    }

                    HStack {
                        Text("Soyisim")
                            .font(.system(size: 18))
                        Spacer()
                    }

                    ZStack {
                        TextField("Keben", text: $surname)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(14)

                        HStack {
                            Spacer()
                            Image(systemName: "checkmark")
                                .padding()
                                .foregroundColor(Color.alertmessagecolor)
                        }
                    }

                    HStack {
                        Text("Konum")
                            .font(.system(size: 18))
                        Spacer()
                    }

                    ZStack {
                        TextField("Türkiye", text: $location)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(14)

                        HStack {
                            Spacer()
                            Image(systemName: "checkmark")
                                .padding()
                                .foregroundColor(Color.alertmessagecolor)
                        }
                    }

                    HStack {
                        Text("Telefon Numarası")
                            .font(.system(size: 18))
                        Spacer()
                    }

                    ZStack {
                        TextField("5312111244", text: $phonenumber)
                            .padding()
                            .foregroundColor(.black)
                            .background(Color.gray.opacity(0.25))
                            .cornerRadius(14)

                        HStack {
                            Spacer()
                            Image(systemName: "checkmark")
                                .padding()
                                .foregroundColor(Color.alertmessagecolor)
                        }
                    }
                    Spacer()
                }
                .padding()
            }
        }
        .navigationTitle("Profili Düzenle")
        .navigationBarItems(trailing:
            Button(action: {
                // Fotoğraf değiştiyse kaydet ve profile page'e dön
                if selectedImage != nil {
                    // Fotoğrafı kaydetme işlemini burada yapabilirsiniz
                }
                dismiss() // Profil sayfasına dön
            }) {
                Text("Onay")
                    .font(.system(size: 18))
                    .fontWeight(.medium)
                    .foregroundColor(Color.orange)
            }
        )
    }
}

struct AvatarPicker: View {
    let avatars: [String]
    @Binding var selectedImage: UIImage?

    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 80))], spacing: 20) {
                    ForEach(avatars, id: \.self) { avatar in
                        Image(avatar)
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(Circle())
                            .onTapGesture {
                                selectedImage = UIImage(named: avatar)
                                // Kapatmak için kullanabilirsiniz
                                    // presentationMode.wrappedValue.dismiss()
                            }
                    }
                }
                .padding()
            }
            .navigationTitle("Avatar Seç")
        }
    }
}

#Preview {
    EditProfile()
}
