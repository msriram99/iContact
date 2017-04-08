//
//  ViewController.swift
//  iContact
//
//  Created by Himaja Motheram on 4/7/17.
//  Copyright © 2017 Sriram Motheram. All rights reserved.
//

import UIKit
import Contacts
import ContactsUI


class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource{
   
    //Create and Initialize with Data
    
    var ContactList: [ContactItem] = [ ContactItem(FN: "ABell", LN: "Zong", PNum: "111-222-3333", EAddr:"azong@csc.xyz"),
                                      
        ContactItem(FN: "Bellc", LN: "Kong", PNum: "444-555-6666", EAddr:"bkong@csc.xyz"),
        ContactItem(FN: "Mzoey", LN:  "Smith",PNum: "777-888-9999", EAddr:"msmith@csc.xyz"),
        ContactItem(FN: "John", LN: "Doe", PNum: "222-111-3333", EAddr:"jdoe@csc.xyz"),
        ContactItem(FN: "Ziad", LN: "Abe", PNum: "444-222-3333", EAddr:"zabe@csc.xyz")
    ]
    
    //var ContacList = [ContactItem] ( )
    
    
    @IBOutlet  var ContactView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
     //   print("you selected cell #\(ContactList[1].FirstName)!")
     
        // Do any additional setup after loading the view, typically from a nib.
        
        ContactList = ContactList.sorted { $0.LastName < $1.LastName}
        //For Case sensitive comparision
       // ContactList = ContactList.sorted{ $0.LastName.localizedCaseInsensitiveCompare($1.LastName)  ComparisonResult.orderedAscending }
      //  self.tableView?.register(UITableViewCell.self, forCellReuseIdentifier:"CellContact")
    
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destinationVC = segue.destination as! DetailViewController
        let indexPath = ContactView.indexPathForSelectedRow!
        let currentContact = ContactList[indexPath.row]
        destinationVC.currentContact = currentContact
    }
    
    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
  func tableView(_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int{
        return self.ContactList.count    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath : IndexPath) -> UITableViewCell{
        
       // let cellIdentifier = "CellContact"
       /* let cell = (tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath as IndexPath) as! ContactTableViewCell) */
        let cell = (tableView.dequeueReusableCell(withIdentifier: "CellContact", for: indexPath as IndexPath)
        
        )
        
         let CurrentSelected = ContactList[indexPath.row]
        
      /*  cell.FNameLbl1.text = CurrentSelected.FirstName
        cell.LNameLbl1.text = CurrentSelected.LastName
        cell.PhNumLbl1.text = CurrentSelected.PhoneNum
        cell.EmailLbl1.text = CurrentSelected.EmailAddr */
        
        //cell.textLabel?.text = CurrentSelected.LastName +  CurrentSelected.FirstName
       // cell.detailTextLabel?.text = CurrentSelected.PhoneNum + CurrentSelected.EmailAddr
        
        cell.textLabel?.text = "\(CurrentSelected.LastName) \(CurrentSelected.FirstName) "
        cell.detailTextLabel?.text = "Phone: \(CurrentSelected.PhoneNum)  Email: \(CurrentSelected.EmailAddr)"
        
        print("SELECTED #\(CurrentSelected.FirstName)!")
        
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let CurrentSelected = ContactList[indexPath.row]
        
        print("you selected cell #\(CurrentSelected)!")
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 45.0
    }
 
}

