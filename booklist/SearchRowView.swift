import SwiftUI

struct SearchRowView: View {
    let imageUrl: String?
    let title: String?
    let publisher: String?
    
    var body: some View {
        HStack {
            if let thumbnailUrl = imageUrl {
                AsyncImage(url: URL(string: thumbnailUrl)) { image in
                    image
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100, height: 100)
                } placeholder: {
                    ProgressView()
                }
                
                VStack(alignment: .leading) {
                    Text(title ?? "")
                        .font(.headline)
                        .bold()
                    Text(publisher ?? "")
                        .font(.caption)
                }
                .frame(minHeight: 100)
            }
        }
    }
}

#Preview {
    SearchRowView(imageUrl: sampleImageUrl, title: "本のタイトル", publisher: "出版社")
}
