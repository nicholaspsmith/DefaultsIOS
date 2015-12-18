//
//  ViewController.swift
//  defaults
//
//  Created by Nick on 12/17/15.
//  Copyright © 2015 Nick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var favLabel: UILabel!
    
    var people = [Person]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let color = NSUserDefaults.standardUserDefaults().valueForKey("color") as? String {
            favLabel.text = "Favorite Color: \(color)"
        } else {
            favLabel.text = "Pick a color"
        }
        
        let personA = Person(first: "Ke", last: "$ha")
        let personB = Person(first: "Lady", last: "Gaga")
        let personC = Person(first: "Justin", last: "Bieber")
        
        people.append(personA)
        people.append(personB)
        people.append(personC)
        
        let peopleData = NSKeyedArchiver.archivedDataWithRootObject(people)
        
        NSUserDefaults.standardUserDefaults().setObject(peopleData, forKey: "people")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func red(sender: AnyObject) {
        favLabel.text = "Favorite Color: Red"
        NSUserDefaults.standardUserDefaults().setValue("Red", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }

    @IBAction func yellow(sender: AnyObject) {
        favLabel.text = "Favorite Color: Yellow"
        NSUserDefaults.standardUserDefaults().setValue("Yellow", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
    
    @IBAction func blue(sender: AnyObject) {
        favLabel.text = "Favorite Color: Blue"
        NSUserDefaults.standardUserDefaults().setValue("Blue", forKey: "color")
        NSUserDefaults.standardUserDefaults().synchronize()
    }
}

