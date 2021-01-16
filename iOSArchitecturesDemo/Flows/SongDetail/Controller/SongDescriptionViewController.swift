
import UIKit

class SongDescriptionViewController: UIViewController {
    
    var rootView = DescriptionView()
    
    override func loadView() {
        super.loadView()
        view = rootView
    }
    
    var app: ITunesSong
    
    init(app: ITunesSong) {
        self.app = app
        super.init(nibName: nil, bundle: nil)
    }
    
    override func viewDidLoad() {
        fillData()
        super.viewDidLoad()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func fillData() {
        rootView.releaseDate.text = "date"
        rootView.releaseNote.text = "note"
    }
}
