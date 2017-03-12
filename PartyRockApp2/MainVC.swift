//
//  ViewController.swift
//  PartyRockApp2
//
//  Created by Cyrus Chan on 9/3/2017.
//  Copyright © 2017 ckmobile.com. All rights reserved.
//

import UIKit

class MainVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var partyRocks = [PartyRock]()
    
    @IBOutlet weak var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlTest = "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>"
        
        let p1 = PartyRock(imageURL: "https://i.ytimg.com/vi/2VlojxrCp9Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FjjuSjhsvdkXX-E8K2iLLPkzk_M", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Buffet 2017")
        
        let p2 = PartyRock(imageURL: "https://i.ytimg.com/vi/2VlojxrCp9Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FjjuSjhsvdkXX-E8K2iLLPkzk_M", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Buffet 2018")
        let p3 = PartyRock(imageURL: "https://i.ytimg.com/vi/2VlojxrCp9Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FjjuSjhsvdkXX-E8K2iLLPkzk_M", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Bill gates")
        let p4 = PartyRock(imageURL: "https://i.ytimg.com/vi/2VlojxrCp9Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FjjuSjhsvdkXX-E8K2iLLPkzk_M", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Youtube")
let p5 = PartyRock(imageURL: "https://i.ytimg.com/vi/2VlojxrCp9Q/hqdefault.jpg?custom=true&w=336&h=188&stc=true&jpg444=true&jpgq=90&sp=68&sigh=FjjuSjhsvdkXX-E8K2iLLPkzk_M", videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube-nocookie.com/embed/2VlojxrCp9Q\" frameborder=\"0\" allowfullscreen></iframe>", videoTitle: "Buffet 2017")
        
        partyRocks.append(p1)
        partyRocks.append(p2)
        partyRocks.append(p3)
        partyRocks.append(p4)
        partyRocks.append(p5)
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyCell", for: indexPath) as? PartyCell{
            
            let partyRock = partyRocks[indexPath.row]
            cell.updateUI(partyRock: partyRock)
            return cell
        }else{
            return UITableViewCell()
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return partyRocks.count
    }

   


}

