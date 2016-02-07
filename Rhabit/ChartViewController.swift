//
//  ChartViewController.swift
//  Rhabit
//
//  Created by Barnes, John on 2/7/16.
//  Copyright © 2016 Mark Moussa. All rights reserved.
//

import UIKit

class ChartViewController: UIViewController {

    import Charts
    
    class ChartViewController: UIViewController {
        
        @IBOutlet weak var LineChart: LineChartView!
        override func viewDidLoad() {
            super.viewDidLoad()
            let months = ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
            let unitsSold = [20.0, 4.0, 6.0, 3.0, 12.0, 16.0]
            
            setChart(months, values: unitsSold)
            // Do any additional setup after loading the view.
        }
        
        func setChart(dataPoints: [String], values: [Double]) {
            // THE FUNCTION SHOULD BE OVERWRITTEN BY THE DATA FROM THE HABIT
            // HEALTHKIT INTEGRATION SHOULD BE ACTIVATED
            var dataEntries: [ChartDataEntry] = []
            
            for i in 0..<dataPoints.count {
                let dataEntry = ChartDataEntry(value: values[i], xIndex: i)
                dataEntries.append(dataEntry)
            }
            
            let lineChartDataSet = LineChartDataSet(yVals: dataEntries, label: "Units Sold")
            let lineChartData = LineChartData(xVals: dataPoints, dataSet: lineChartDataSet)
            LineChart.data = lineChartData
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
}
