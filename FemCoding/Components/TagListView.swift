import SwiftUI

struct TagListView: View {
    let tags: [String]
    
    var body: some View {
        LazyHGrid(rows: [GridItem(.adaptive(minimum: 40))], spacing: 8) {
            ForEach(tags, id: \.self) { tag in
                ButtonTag(category: tag)
            }
        }
        .padding(.horizontal, 8)
    }
}

struct TagListView_Previews: PreviewProvider {
    static var previews: some View {
        TagListView(tags: ["Her", "Him", "They", "Us", "Them", "Their"])
    }
}
