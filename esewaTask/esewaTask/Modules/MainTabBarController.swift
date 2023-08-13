import UIKit

class MainTabBarViewController: UITabBarController {
    
    //MARK: - Properties
    
    //MARK: - Selectors
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBar()
    }

    //MARK: - Helpers
    

    func setupTabBar() {
        
        setViewControllers([
            createTabViewController(.event),
            createTabViewController(.ticket),
            createTabViewController(.prize),
        ], animated: true)
        
        tabBar.tintColor = .appGreen
        tabBar.backgroundColor = .white
    }
    
    func createTabViewController(_ tab: TabBar) -> UINavigationController {
        let nav = UINavigationController(rootViewController: tab.controller)
        nav.tabBarItem.image = UIImage(systemName: tab.icon)
        return nav
    }
    
}
