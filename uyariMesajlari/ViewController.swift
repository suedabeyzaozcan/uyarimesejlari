 //
//  ViewController.swift
//  uyariMesajlari
//
//  Created by Sueda Beyza Özcan on 23.07.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!

    @IBOutlet weak var password2TextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signUpTiklandi(_ sender: Any) {
        if  emailTextField.text == ""{
            buttonatiklandi(titleGirdisi: "Hata", messajeGirdisi: "E-mail Yanlış veya Hatalı")
           
        } else if passwordTextField.text == "" {           
            buttonatiklandi(titleGirdisi: "Hata", messajeGirdisi: "Parola Eksik veya Hatalı")

        } else if password2TextField.text != password2TextField.text {
            buttonatiklandi(titleGirdisi: "Hata", messajeGirdisi: "Parololar Uyuşmuyor")

        } else {
            buttonatiklandi(titleGirdisi: "Tebrikler!", messajeGirdisi: "kullanıcı oluşturuldu")
        }
    }
    func buttonatiklandi(titleGirdisi:String,messajeGirdisi: String){
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messajeGirdisi,  preferredStyle: UIAlertController.Style.alert)
                            
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {(UIAlertAction) in
        }
        uyariMesaji.addAction(okButton)
                            
        self.present(uyariMesaji, animated: true, completion: nil)
                        }
        }
                        
