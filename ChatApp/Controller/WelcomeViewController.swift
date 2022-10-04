
import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var logInButton: UIButton!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.isNavigationBarHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.isNavigationBarHidden = false
    }
    
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.layer.cornerRadius = registerButton.frame.height/2
        registerButton.layer.borderWidth = 2.5
        registerButton.layer.borderColor = UIColor(named: "Color2")?.cgColor
        
        logInButton.layer.cornerRadius = registerButton.frame.height/2
        logInButton.layer.borderWidth = 2.5
        logInButton.layer.borderColor = UIColor(named: "Color1")?.cgColor
        
        titleLabel.text = ""
        var charIndex=0.0
        let titleText = K.appName
        for letter in titleText{
            Timer.scheduledTimer(withTimeInterval: 0.15*charIndex,
                    repeats: false){(timer) in
                self.titleLabel.text?.append(letter)
            }
            charIndex+=1
        }
       
    }
    

}
