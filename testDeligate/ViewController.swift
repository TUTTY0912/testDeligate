//


import UIKit

class ViewController: UIViewController, testDeligate {

    @IBOutlet weak var delegateTableView: DelegateTableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        delegateTableView.testDeligate = self
    }
    func test() {
        guard URL(string: "https://www.google.co.jp") != nil else {
        return
    }
        
        
        if UIApplication.shared.canOpenURL("https://www.google.co.jp") {
            UIApplication.shared.openURL("https://www.google.co.jp")
        }
}

}

