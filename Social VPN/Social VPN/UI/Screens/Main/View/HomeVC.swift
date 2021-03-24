import UIKit

class HomeVC: BaseVC {
    
    //MARK: - View
    
    //MARK: - Variables
    
    private var viewModel = HomeVM()
    
    //MARK: - VC cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Delegates
        
        configureUI()
    }
    
    func configureUI() {
        
        // Hide nav bar
        self.navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: - On click actions
    @IBAction func startButtonPressed(_ sender: UIButton) {
        showAlert(.start)
    }
    
    @IBAction func buy100GBTrafficButtonPressed(_ sender: UIButton) {
        showAlert(.buy100GBButtonPressed)
    }
    
    @IBAction func stopVPNForMinuteButtonPressed(_ sender: UIButton) {
        showAlert(.stopVPNForMinute)
    }
    
}

