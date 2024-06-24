import SwiftUI

struct PlaceDetailPage: View {
    @State private var isBookmarked = false

    var body: some View {
        NavigationStack {
            VStack{
                Image("cukurova")
                    .resizable()
                    .frame(maxWidth: .infinity, maxHeight: 400)
                
                ZStack {
                    RoundedRectangle(cornerRadius: 40)
                        .foregroundColor(.orange)
                    VStack(alignment: .leading) {
                        HStack {
                            Text("Merkez Park")
                                .fontWeight(.semibold)
                                .font(.system(size: 30))
                            
                            Button(action: {
                                isBookmarked.toggle()
                            }) {
                                Image(systemName: isBookmarked ? "bookmark.fill" : "bookmark")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                                    
                            }
                            Spacer()
                            Image("avatar")
                                .resizable()
                                .frame(width: 60, height: 60)
                            
                        }
                        HStack{
                            Image("location")
                                .resizable()
                                .frame(width: 20, height: 20)
                            Text("Adana")
                            
                        }
                        
                        Spacer()
                        
                        Text("50 kişi bu lokasyonu favorilerine ekledi.")
                        Text("25 kişi bu lokasyonu ziyaret etti.")
                        Spacer()
                        Text("Hakkında")
                            .font(.system(size: 35))
                            .fontWeight(.medium)
                        Text("Adana Merkez Parkı: Şehir merkezinde dinlenme ve rekreasyon için ideal, yeşilliklerle çevrili geniş alan... ")
                        Spacer()
                    }.padding()
                }.padding(.top, -50)
            }
            
        }.navigationTitle("Detay")
    }
}

#Preview {
    PlaceDetailPage()
}
