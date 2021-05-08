//
//  LoginViewController.swift
//  pruebaFramework
//
//  Created by Juan Sebastian Florez Saavedra on 20/11/20.
//  Copyright © 2020 Juan Sebastian Florez Saavedra. All rights reserved.
//

import UIKit

public class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var contraseniaTextField: UITextField!
    
    var protocolo: LoginProtocol?
    
    
    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func ingresar(_ sender: Any) {
        let email = emailTextField.text
        let contraseña = contraseniaTextField.text
        print("DESDE FRAMEWORK -> email: \(email!), contraseña: \(contraseña!)")
        protocolo?.ingresar(email: email!, contraseña: contraseña!)
    }
    
}
