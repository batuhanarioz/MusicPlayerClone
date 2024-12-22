import SwiftUI

struct AllSongsView: View {
    
    @State var allArr: NSArray = [
        [
            
            "image": "s1",
            "name": "Billie Jean",
            "artist": "Michael Jackson"
        ],
        [
            "image": "s1",
            "name": "Smooth Criminal",
            "artist": "Michael Jackson"
        ],
        [
            "image": "s3",
            "name": "Lovely",
            "artist": "Billie Eilish"
        ],
        [
            "image": "s4",
            "name": "Chihiro",
            "artist": "Billie Eilish"
        ],
        [
            "image": "s5",
            "name": "Starboy",
            "artist": "The Weeknd"
        ],
        [
            "image": "s6",
            "name": "The Hills",
            "artist": "The Weeknd"
        ],
        [
            "image": "s7",
            "name": "Paradise",
            "artist": "Coldplay"
        ],
        
        [
            "image": "s9",
            "name": "Somebody that I used to know",
            "artist": "Gotye"
        ],
        [
            "image": "s10",
            "name": "Yellow",
            "artist": "Coldplay"
        ]
    ]
    
    var body: some View {
        ScrollView{
            LazyVStack(spacing: 10) {
                ForEach( 0..<allArr.count, id:\.self ) {
                    index in
                    
                    var sObj = allArr[index] as? NSDictionary ?? [:]
                    
                    NavigationLink {
                        MainPlayerView()
                    } label: {
                        AllSongRow(sObj: sObj)
                    }
                }
            }
            .padding(20)
        }
        .background(Color.bg)
        .ignoresSafeArea()
        
        
    }
}

struct AllSongsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            AllSongsView()
        }
       
    }
}
