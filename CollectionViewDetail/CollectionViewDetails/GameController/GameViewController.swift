//
//  GameLaunchViewController.swift
//  CollectionViewDetail
//
//  Created by Goutham Raj N on 26/08/22.
//

import UIKit


class GameViewController: UIViewController {
    
    var gameView = GameView()
    let constantImg = ConstantImg()
//    var timeLimit = 70
    var activeCellIndex = [IndexPath]()
    var noOfCellsActive = 0
    var count: Int = 0
    var firstActiveCellIndex = Int()
    var clickedHidden = [IndexPath]()
    
    var timer : Timer?
    var counter = 0
    var isRestart: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Mind Game"
        
        gameView.collectionView.delegate = self
        gameView.collectionView.dataSource = self
        self.navigationItem.setHidesBackButton(true, animated: false)

        Gameconstraints()
        timer = Timer.scheduledTimer(timeInterval:1, target:self, selector:#selector(processTimer), userInfo: nil, repeats: true)
        
        
    }
    func Gameconstraints(){
        view.addSubview(gameView)
        gameView.translatesAutoresizingMaskIntoConstraints = false
        

        gameView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        gameView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        gameView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        gameView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        gameView.cellViewCons()
    }

    @objc func processTimer() {
        counter += 1
        //        print("This is a second ", counter)
        gameView.countView.text = "Timer : \(counter)"
        if counter == 10{
            timer?.invalidate()
            timer = nil
            let restartVC = RestartViewController()
            restartVC.countIng = count

            navigationController?.pushViewController(restartVC, animated: true)
            self.navigationItem.leftBarButtonItem = nil
            self.navigationItem.hidesBackButton = true
            guard let navigationController = self.navigationController else { return }
            var navigationArray = navigationController.viewControllers // To get all UIViewController stack as Array
            navigationArray.remove(at: navigationArray.count - 2) // To remove previous UIViewController
            self.navigationController?.viewControllers = navigationArray
            
//            print(alertGameOver(message: "Times Up Your Score Is: \(count)"))
            counter = 0
        }
        
        
    }

    @objc func timerAction(){
        print("timer fired")
    }
    
    func restartGame(){
        isRestart = true
        gameView.cellViewCons()
        timer = Timer.scheduledTimer(timeInterval:1, target:self, selector:#selector(processTimer), userInfo: nil, repeats: true)
        DispatchQueue.main.async{ [self] in

                gameView.collectionView.reloadItems(at: clickedHidden)

        }
        let vcG = GameViewController()
        navigationController?.pushViewController(vcG, animated: true)
        }
    
 
    
    func check(_ a:Int,_ b:Int) -> Bool {
        if(a==b){
            count+=1
            print(count)

            if count == 9{
                alertForRestart(message: "You won the match")

            }
            
            return true
            
        }
        else{
            return false
        }
    }
    
    func wrongAnswerPart(_ cell:CollectionViewCell,_ indexPath:IndexPath){
        if check(cell.cellId,firstActiveCellIndex){
            cell.flip()
            activeCellIndex.append(indexPath)
            for i in activeCellIndex{
                guard let cell = gameView.collectionView.cellForItem(at: i) as? CollectionViewCell else {
                    return
                }
                activeCellIndex = []
                noOfCellsActive = 0
                
                cell.isHidden = true
                clickedHidden.append(indexPath)
                print(clickedHidden)
            }
            
        }
        else{
            activeCellIndex.append(indexPath)
            
            for i in activeCellIndex{
                guard let cell = gameView.collectionView.cellForItem(at: i) as? CollectionViewCell else {
                    return
                }
                
                cell.flip()
                activeCellIndex = []
                noOfCellsActive = 0
            }
        }
    }
    

    
    func alertForRestart(message:String){
        let alert = UIAlertController(title:"You won the match", message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Back To Menu", style: .cancel, handler: nil))
        alert.addAction(UIAlertAction(title: "Next Level", style: .default, handler: {_ in
            self.navigationController?.popToRootViewController(animated: true)
            
        }))

        present(alert,animated: true)
    }
 
}

extension GameViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return constantImg.imageArr.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.imgView.image = UIImage(named: constantImg.imageArr[indexPath.row].image)
        cell.cellId = constantImg.imageArr[indexPath.row].id
        cell.backgroundColor = .clear
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
//        counter < timeLimit &&
        if  count < 10{
            guard let cell = collectionView.cellForItem(at: indexPath) as? CollectionViewCell else {
                return
            }
            if noOfCellsActive < 1{
                cell.flip()
                noOfCellsActive += 1
                firstActiveCellIndex = cell.cellId
                activeCellIndex.append(indexPath)
            }
            else if noOfCellsActive == 1 && indexPath != activeCellIndex[0]{

                cell.flip()
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    self.wrongAnswerPart(cell,indexPath)
                }
            }
            else if (indexPath == activeCellIndex[0]){
                cell.flip()
                activeCellIndex = []
                noOfCellsActive = 0
            }
        }
    }
}

extension GameViewController:UICollectionViewDelegate{
}

extension GameViewController:UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: (view.frame.size.width / 3)-15,
                      height: (view.frame.size.height / 9)-10)
    }
}

