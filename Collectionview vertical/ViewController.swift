//
//  ViewController.swift
//  Collectionview vertical
//
//  Created by USER on 08/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var CountryList = [CountryInformation]()
    
    
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var countryNameLbl: UILabel!
    @IBOutlet weak var capitalsLbl: UILabel!
    @IBOutlet weak var currencyLbl: UILabel!
    @IBOutlet weak var langugeLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        generatCountryInformation()
        
        countryNameLbl .isHidden = true
        capitalsLbl.isHidden = true
        currencyLbl.isHidden = true
        langugeLbl.isHidden = true
        
    }
    func generatCountryInformation() {
        CountryList.removeAll()
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Bangladesh"), FlagName: "Bangladesh", Country: "Bangladesh", Capital: "Dhaka", currency: "Taka (BDT)", Language: "Bangali"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Afghanistan"), FlagName: "Afghanistan", Country: "Afghanistan", Capital:"Kabul", currency: "Afghani  (AFN)", Language: "Pashto Dari (Persian)"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Armenia"), FlagName: "Armenia", Country: "Armenia", Capital: "Yerevan", currency: "Dram (AMD)", Language: "Armenian"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "India"), FlagName: "India", Country: "India", Capital: "New delhi", currency: "Indian rupee (INR)", Language:"Hindi"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Pakistan"), FlagName: "Pakistan", Country: "Pakistan", Capital: "Islamabad", currency: "Pakistani rupee(PKR)", Language: "Urdu"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Sri lanka"), FlagName: "Sri lanka", Country: "Sri lanka", Capital: "Sri jayawardenepura kotte", currency: "Sri lankan rupee(LKR)", Language: "Tamil"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Bhutan"), FlagName: "Bhutan", Country: "Bhutan", Capital: "Thimphu", currency: "Bhutanese ngultrumb (BTN)", Language: "Dzongkha"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "China"), FlagName: "China", Country: "China", Capital: "Beijing", currency: "Renminbi (Yuan) (CNY)", Language: "Chinese"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Iran"), FlagName: "Iran", Country: "Iran", Capital: "Tehran", currency: "rial (IRR)", Language: "Persian"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Japan"), FlagName: "Japan", Country: "Japan", Capital: "Tokyo", currency: "yen (JPY)", Language: "Japanese"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Malasiya"), FlagName: "Malasiya", Country: "Malasiya", Capital: "Kuala lumpur", currency: "Ringgit (MYR)", Language: "Malaysian"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Maldives"), FlagName: "Maldives", Country: "Maldives", Capital: "Male", currency: "Maldivian rufiyaa(MVR)", Language: "Maldivian"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Nepal"), FlagName: "Nepal", Country: "Nepal", Capital: "Kathmandu", currency: "Nepalase rupee(NPR)", Language: "Nepali"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Oman"), FlagName: "Oman", Country: "Oman", Capital: "Muscat", currency: "Rial(OMR)", Language: "Arabic"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Palestine"), FlagName: "Palestine", Country: "Palestine", Capital: "East jerusalem", currency: "Israeli new sheqel(ILS)", Language: "Arabic"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Qatar"), FlagName: "Qatar", Country: "Qatar", Capital: "Doha", currency: "Riyal (QAR)", Language: "Arabic"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Saudi arabia"), FlagName: "Saudi arabia", Country: "Saudi arabia", Capital: "Riyadh", currency: "Saudi riyal(SAR)", Language: "Arabic"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "South korea"), FlagName: "South korea", Country: "South korea", Capital: "Seoul", currency: "South korean won(KRW)", Language: "Korean"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Syria"), FlagName: "Syria", Country: "Syria", Capital: "Damascus", currency: "Syrian pound(SYP)", Language: "Arabic"))
        
        CountryList.append(CountryInformation(FlagPhoto: UIImage(named: "Thailand"), FlagName: "Thailand", Country: "Thailand", Capital: "Bangkok", currency: "Baht (THB)", Language: "Thai"))
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        SetupContainer()
    }
    
    func SetupContainer(){
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        //self.collectionView.collectionViewLayout = UICollectionViewLayout()
        self.collectionView.reloadData()
    }
}



extension ViewController : UICollectionViewDataSource{
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CountryList.count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CountryListCell", for: indexPath) as! CountryListCell
        if indexPath.item < CountryList.count {
        let CountryName = CountryList [indexPath.item]
            cell.nameLbl.text = CountryName.countryName
            cell.flagImage.image = CountryName.FlagImage
        }
        return cell
    }
    
    
}
extension ViewController : UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = collectionView.bounds.size.width/2-5
        let height = collectionView.bounds.size.height/5-10
        
       return CGSize (width: width, height: height)
      // return CGSize(width:200, height: 150)
    }
}

extension ViewController : UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        countryNameLbl .isHidden = false
        capitalsLbl.isHidden = false
        currencyLbl.isHidden = false
        langugeLbl.isHidden = false
        
        
        let information = CountryList[indexPath.item]
        countryNameLbl.text = " \((information.FlagCountryName)!)"
        capitalsLbl.text = "Capital : \((information.capitalName)!)"
        currencyLbl.text = "Currency : \((information.currencyName)!)"
        langugeLbl.text = "Language : \((information.CountryLanguage)!)"
       
    }
}
