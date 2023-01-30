//
//  MainView.swift
//  UiApplication
//
//  Created by Goutham Raj N on 12/08/22.
//

import UIKit

class MainView: UIView {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    
//
//    let texter:UITextField = {
//        let texter = UITextField()
//        texter.translatesAutoresizingMaskIntoConstraints = false
//        texter.backgroundColor = .blue
//        texter.placeholder = "type here for toolbar"
//
//        texter.keyboardType = UIKeyboardType.decimalPad
//        return texter
//    }()

    
//    var views : [UIView] = []
//    
//    func addSub(){
//        for i in views{
//            self.addSubview(i)
//        }
//    }
    
    var arr = ["bat","ball","pig"]
    
    

    let textField:UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .gray
        textField.placeholder = "type here for toolbar"
        textField.keyboardType = UIKeyboardType.decimalPad
        return textField
    }()
    
    let button:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .gray
        button.setTitle("button", for: .normal)
        return button
    }()

    let toolBar:UIToolbar = {
        let toolBar = UIToolbar()
        toolBar.sizeToFit()
        let done = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneToolBar))
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        toolBar.setItems([space,done], animated: true)
//        toolBar.translatesAutoresizingMaskIntoConstraints = false

        return toolBar
    }()
    
    let imgView : UIImageView = {
        let img = UIImageView()
        img.image = UIImage(named: "logo")
         img.translatesAutoresizingMaskIntoConstraints = false
         img.backgroundColor = .black
         img.contentMode = .scaleAspectFit
         img.sizeToFit()
         return img
    }()
    
    let switcher : UISwitch = {
      let switcher = UISwitch()
        switcher.translatesAutoresizingMaskIntoConstraints = false
        switcher.addTarget(self, action: #selector(switchStateDidChange(_:)), for: .valueChanged)
        return switcher
    }()
    
    
    let slider : UISlider = {
      let slider = UISlider()
        slider.translatesAutoresizingMaskIntoConstraints = false
        slider.minimumValue = 0
        slider.maximumValue = 10
        slider.addTarget(self, action: #selector(sliderValue(sender:) ), for: .valueChanged)
        return slider
    }()
    
    
    let picker : UIPickerView = {
      let picker = UIPickerView()
        picker.translatesAutoresizingMaskIntoConstraints = false
       
        return picker
    }()
    
    let label:UILabel = {
        let label = UILabel()
        label.text = "i am label"
        label.backgroundColor = .cyan
        label.translatesAutoresizingMaskIntoConstraints = false

        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        

        
        self.constaints()
    
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


    func constaints(){
        self.backgroundColor = .lightGray
        self.addSubview(textField)
        self.addSubview(label)
        self.addSubview(imgView)
        self.addSubview(switcher)
        self.addSubview(slider)
        self.addSubview(picker)
//        self.viewDidLoad()
        self.backgroundColor = .lightGray
        textField.inputAccessoryView = toolBar
        
        textField.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,constant: 20).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 20).isActive = true
        textField.widthAnchor.constraint(equalTo: self.widthAnchor,multiplier: 0.7).isActive = true
        textField.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        
        
        label.topAnchor.constraint(equalTo: textField.bottomAnchor,constant: 10).isActive = true
        label.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 125).isActive = true
        

        imgView.topAnchor.constraint(equalTo: label.bottomAnchor,constant: 20).isActive = true
        imgView.leadingAnchor.constraint(equalTo: label.leadingAnchor,constant: 10).isActive = true
        imgView.heightAnchor.constraint(equalToConstant: 40).isActive = true
        imgView.widthAnchor.constraint(equalToConstant: 40).isActive = true
        
        switcher.topAnchor.constraint(equalTo: imgView.bottomAnchor,constant: 10).isActive = true
        switcher.leadingAnchor.constraint(equalTo: imgView.leadingAnchor,constant: 10).isActive = true
        switcher.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        slider.topAnchor.constraint(equalTo: switcher.bottomAnchor,constant: 10).isActive = true
        slider.leadingAnchor.constraint(equalTo: switcher.leadingAnchor,constant: -100).isActive = true
        slider.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        
        
        picker.topAnchor.constraint(equalTo: slider.bottomAnchor,constant: 10).isActive = true
        picker.leadingAnchor.constraint(equalTo: slider.leadingAnchor,constant: -30).isActive = true
        picker.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
    }
    //for slider
    @objc func sliderValue(sender:UISlider){
        label.text = "\(sender.value)"
    }
    //for toolbar
    @objc func doneToolBar(){
        textField.resignFirstResponder()
    }
    //fro switch

    @objc func switchStateDidChange(_ sender:UISwitch!)
    {
        if (sender.isOn == true){

            print("UISwitch state is now ON")
        }
        else{

            print("UISwitch state is now Off")
        }
    }

    
    
}

extension MainView:UIPickerViewDelegate,UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
        
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arr.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arr[row]
    }
    
}
