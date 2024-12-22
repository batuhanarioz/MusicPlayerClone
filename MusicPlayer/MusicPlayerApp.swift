import SwiftUI

@main
struct MusicPlayerApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                MainTabView()
            }
            .navigationViewStyle(.stack)
        }
    }
}
