import SwiftUI
import UIKit

struct UiKitSearchView: UIViewControllerRepresentable {
    
    func makeUIViewController(context: Context) -> UIViewController {
        let searchViewController = ViewControllerSearch()
        let searchNavigationController = UINavigationController(rootViewController: searchViewController)
        return searchNavigationController
    }

    func updateUIViewController(_ uiViewController: UIViewController, context: Context) {
    }
    
    typealias UIViewControllerType = UIViewController
}
