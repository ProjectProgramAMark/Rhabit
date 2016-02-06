import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var loginButton: UISegmentedControl!
    @IBOutlet weak var registerButton: UISegmentedControl!
    @IBOutlet weak var submitButton: UIButton!

    @IBAction func indexChanged(sender : UISegmentedControl) {
        // This all works fine and it prints out the value of 3 on any click
        
        switch sender.selectedSegmentIndex {
        case 0:
            print("login segement clicked")
            @IBAction func submitButton(sender: UIButton) {
                ref.authUser(self.usernameField.text, password: self.passwordField.text,
                    withCompletionBlock: { error, authData in
                        if error != nil {
                            // There was an error logging in to this account
                        } else {
                            // We are now logged in
                        }
                })
            }
            
        case 1:
            var cardNumber = UITextField()
            
            cardNumber.attributedPlaceholder = NSAttributedString(string: "Card Number")
            print("register segment clicked")
            @IBAction func submitButton(sender: UIButton) {
                myRootRef.createUser(self.usernameField.text, password: self.passwordField.text,
                    withValueCompletionBlock: { error, result in
                        if error != nil {
                            // There was an error creating the account
                        } else {
                            let uid = result["uid"] as? String
                            println("Successfully created user account with uid: \(uid)")
                        }
                })
            }
        default:
            print("Wtf")
            break;
        }  //Switch
    } // indexChanged for the Segmented Control
    
    
    var myRootRef = Firebase(url:"https://scorching-torch-468.firebaseio.com/")
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
