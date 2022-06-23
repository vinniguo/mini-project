//
//  ViewController.swift
//  mini project
//
//  Created by Scholar on 6/22/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        frog.isHidden = true
    }
    
    @IBOutlet weak var frog: UIImageView!

    @IBAction func Welcome(_ sender: Any) {
        frog.isHidden = false
    }
    @IBAction func space1(_ sender: Any) {
        frog.isHidden = true
    }
    @IBAction func space2(_ sender: Any) {
        frog.isHidden = true
    }
    

// list of facts for friends & family
var ff = ["My best friend is Adam", "I have two sisters", "I grew up with my older cousin Andy", "I was raised in China with my grandma", "I love making new friends and meeting new people"]
// list of facts for personality
    var per = ["My MBTI type is ENFJ", "I'm an Aquarius", "I used to be an ENTJ", "I have broke the enneagram test", "My most enneagram result is 6w5"]
// list of facts for hobbies & interests
var hi = ["I play badminton", "In freshman year, I began film photography", "I've been playing badminton since 8th grade", "When I used to run track, I would sprint the 200 & 400", "I used to do pole vault"]

// function for randomized fun fact
func randomizer(array : [String])-> String{
    let random = Int.random(in: 0..<5)
    let fact = array[random]
    return fact
}

//this is the text field
    @IBOutlet weak var label1: UILabel!
    
//button one -- friends & family
    @IBAction func button1(_ sender: Any) {
        label1.text =  randomizer(array:ff)
    }
//button two -- persoanlity
    @IBAction func button2(_ sender: Any) {
        label1.text =  randomizer(array:per)
    }
//button 3 --  hobbies & interests
    @IBAction func button3(_ sender: Any) {
        label1.text =  randomizer(array:hi)
    }
}

