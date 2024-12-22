import SwiftUI

class MainViewModel: ObservableObject {
    static var share : MainViewModel = MainViewModel()
    
    @Published var selectTab: Int = 0
    @Published var isShowMenu: Bool = false
}
