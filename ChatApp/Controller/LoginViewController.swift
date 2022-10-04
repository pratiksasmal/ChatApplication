
import UIKit
import Firebase

class LoginViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var loginButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailView.layer.cornerRadius = 12
        passwordView.layer.cornerRadius = 12
        loginButton.layer.cornerRadius = loginButton.frame.height/2
        
    }

    @IBAction func loginPressed(_ sender: UIButton) {
        
        if let email = emailTextfield.text, let password = passwordTextfield.text{
            
        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
            
            if let e = error {
                print(e)
            }else{
                self.performSegue(withIdentifier: K.logInSegue, sender: self)
            }
            
            }
        }
    }
    
}
