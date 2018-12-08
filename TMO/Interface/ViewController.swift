//
//  ViewController.swift
//  TMO
//
//  Created by Mary Gerina on 10/15/18.
//  Copyright © 2018 Mary Gerina. All rights reserved.
//

import Cocoa
import Charts

class ViewController: NSViewController {
    @IBOutlet weak var l00Text: NSTextFieldCell!
    @IBOutlet weak var l01Text: NSTextFieldCell!
    @IBOutlet weak var l02Text: NSTextFieldCell!
    @IBOutlet weak var l10Text: NSTextFieldCell!
    @IBOutlet weak var l11Text: NSTextFieldCell!
    @IBOutlet weak var l12Text: NSTextFieldCell!
    @IBOutlet weak var l20Text: NSTextFieldCell!
    @IBOutlet weak var l21Text: NSTextFieldCell!
    @IBOutlet weak var l22Text: NSTextFieldCell!
    @IBOutlet weak var TText: NSTextFieldCell!
    @IBOutlet weak var NText: NSTextFieldCell!
    @IBOutlet weak var EText: NSTextFieldCell!
    
    @IBOutlet weak var intensityTable: NSTableView!
    @IBOutlet weak var averageTimeLable: NSTextField!
    
    @IBOutlet weak var intensityChart: LineChartView!
    @IBOutlet weak var P0Checker: NSButton!
    @IBOutlet weak var P1Checker: NSButton!
    @IBOutlet weak var P2Checker: NSButton!
    
    let intensityMatrixCount = 3
    var T: Int = 0
    var N: Int = 0
    var E: Double = 0
    var intensity: Intensity?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func calculate(_ sender: Any) {
        prepare()
        let stateMatrix = intensity?.createStateMatrix(T: T, N: N)
//        print(stateMatrix)
    }
    
    func prepare(){
        T = Int(TText.title)!
        N = Int(NText.title)!
        E = Double(EText.title)!
        
        var intensityMatrix = Array(repeating: Array(repeating: 0.0, count: intensityMatrixCount), count: intensityMatrixCount)
        intensityMatrix[0][0] = Double(l00Text.title)!
        intensityMatrix[0][1] = Double(l01Text.title)!
        intensityMatrix[0][2] = Double(l02Text.title)!
        
        intensityMatrix[1][0] = Double(l10Text.title)!
        intensityMatrix[1][1] = Double(l11Text.title)!
        intensityMatrix[1][2] = Double(l12Text.title)!
        
        intensityMatrix[2][0] = Double(l20Text.title)!
        intensityMatrix[2][1] = Double(l21Text.title)!
        intensityMatrix[2][2] = Double(l22Text.title)!
        
        intensity = Intensity(intensityMatrix: intensityMatrix)
    }
}

