//
//  PaintDrawVC.swift
//  ecom
//
//  Created by Savan Ankola on 20/06/20.
//  Copyright © 2020 Savan Ankola. All rights reserved.
//

import UIKit
import PencilKit

class PaintDrawVC: UIViewController {

    @IBOutlet weak var CanvasView: PKCanvasView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        self.SetUpCanvasView()
    }
    
    private func SetUpCanvasView() {
        if let window = view.window, let toolPicker = PKToolPicker.shared(for: window) {
            toolPicker.setVisible(true, forFirstResponder: self.CanvasView)
            toolPicker.addObserver(CanvasView)
            CanvasView.becomeFirstResponder()
        }
    }
    
    @IBAction func TapOnImageBtn(_ sender: UIBarButtonItem) {
        let vc = ViewController(nibName: "ViewController", bundle: nil)
        let img = UIGraphicsImageRenderer(bounds: self.CanvasView.bounds).image{_ in (
            view.drawHierarchy(in: self.CanvasView.bounds, afterScreenUpdates: true) )}
        vc.img = img
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func TapOnClearBtn(_ sender: UIBarButtonItem) {
        self.CanvasView.drawing = PKDrawing()
    }
    
}
