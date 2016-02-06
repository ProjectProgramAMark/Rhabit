import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    //MARK: Properties
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    var myRootRef = Firebase(url:"https://scorching-torch-468.firebaseio.com/")
    
    @IBAction func optionSegment(sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            myRootRef.authUser(self.usernameField.text, password: self.passwordField.text,
                withCompletionBlock: { error, authData in
                    if error != nil {
                        // There was an error logging in to this account
                    } else {
                        // We are now logged in
                    }
                })
            } else if(sender.selectedSegmentIndex == 1) {
                myRootRef.createUser(self.usernameField.text, password: self.passwordField.text,
                    withValueCompletionBlock: { error, result in
                        if error != nil {
                            // There was an error creating the account
                        } else {
                            let uid = result["uid"] as? String
                            print("Successfully created user account with uid: \(uid)")
                        }
                })
            }
        }
    
    @IBAction func submitButton(sender: AnyObject) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBarController = storyboard.instantiateViewControllerWithIdentifier("TabBarController") as! UITabBarController
        let appDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        appDelegate.window?.rootViewController = tabBarController
    }
    

    @IBAction func submit(sender: UISegmentedControl) {
        if(sender.selectedSegmentIndex == 0) {
            myRootRef.authUser(self.usernameField.text, password: self.passwordField.text,
                withCompletionBlock: { error, authData in
                    if error != nil {
                        // There was an error logging in to this account
                    } else {
                        // We are now logged in
                    }
            })
        } else if(sender.selectedSegmentIndex == 1) {
            myRootRef.createUser(self.usernameField.text, password: self.passwordField.text,
                withValueCompletionBlock: { error, result in
                    if error != nil {
                        // There was an error creating the account
                    } else {
                        let uid = result["uid"] as? String
                        print("Successfully created user account with uid: \(uid)")
                    }
            })
        }
    }
    
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
