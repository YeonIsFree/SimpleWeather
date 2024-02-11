//
//  SceneDelegate.swift
//  SimpleWeather
//
//  Created by Seryun Chun on 2024/02/10.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        sleep(2)
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        // 탭바컨트롤러의 생성
        let tabBarVC = UITabBarController()
        
        // 첫번째 화면은 네비게이션컨트롤러로 만들기 (기본루트뷰 설정)
        let vc1 = UINavigationController(rootViewController: HomeViewController())
//        let vc2 = SecondViewController()
//        let vc3 = ThirdViewController()
        
        // 탭바 이름들 설정
        vc1.title = "Home"
//        vc2.title = "Search"
//        vc3.title = "Post"
        
        // 탭바로 사용하기 위한 뷰 컨트롤러들 설정
        tabBarVC.setViewControllers([vc1], animated: false)
        tabBarVC.modalPresentationStyle = .fullScreen
        tabBarVC.tabBar.backgroundColor = .systemBackground
        
        // 탭바 이미지 설정 (이미지는 애플이 제공하는 것으로 사용)
        guard let items = tabBarVC.tabBar.items else { return }
        items[0].image = UIImage(systemName: "house")
//        items[1].image = UIImage(systemName: "folder")
//        items[2].image = UIImage(systemName: "paperplane")
//        items[3].image = UIImage(systemName: "doc")
//        items[4].image = UIImage(systemName: "note")
        
        // 기본루트뷰를 탭바컨트롤러로 설정⭐️⭐️⭐️
        window?.rootViewController = tabBarVC
        window?.makeKeyAndVisible()
    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

