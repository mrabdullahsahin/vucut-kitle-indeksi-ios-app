//
//  ViewController.swift
//  vke
//
//  Created by Abdullah on 4.10.2016.
//  Copyright © 2016 abdullahsahin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Kullanılacak olan araçlar tanımlandı.
    @IBOutlet weak var txtKilo: UITextField!
    @IBOutlet weak var txtBoy: UITextField!
    @IBOutlet weak var lblDurum: UILabel!
    
    @IBAction func hesapla(sender: AnyObject) {
        
        //Kullanılacak olan değişkenler tanımlandı.
        var kilo:Double = 0.0
        var boy:Double = 0.0
        var vke:Double = 0.0
        
        //Textbox'a girilen değerler değişkenlere aktarıldı.
        kilo = Double(txtKilo.text!)!
        boy = Double(txtBoy.text!)!
        
        //Boy değeri mesala 165 olarak geliyor direk bu şekilde hesaplama yapılmaya kalkıldığı zaman normalin çok üstünde bir değer veriyor. Bundan dolayı 100 bölme ihtiyacı duydum. 100'e bölünce elimde 1.65 gibi bir değer olacaktır.
        boy = boy/100
        
        //vke(vücut kitle indeksi) değeri hesaplanıyor burada.
        vke = (Double(kilo)/Double(boy*boy))
        
        //vke değeri gerekli kontrollerden geçiriliyor ve kişiye durumu söyleniyor.
        if(vke<18.6){
            lblDurum.text = "Sonuç: \(String(vke)) -> Zayıfsınız. "
        }
        else if((18.4<vke) && (vke<25)){
            lblDurum.text = "Sonuç: \(String(vke)) -> Normalsiniz."
        }
        else if((24.9<vke) && (vke<30)){
            lblDurum.text = "Sonuç: \(String(vke)) -> Fazla Kilolusunuz"
        }
        else if((29.9<vke) && (vke<35)){
            lblDurum.text = "Sonuç: \(String(vke)) -> Şişmansınız(Obez) - 1. Sınıf"
        }
        else if((34.9<vke) && (vke<45)){
            lblDurum.text = "Sonuç: \(String(vke)) -> Şişmansınız(Obez) - 2. Sınıf"
        }
        else if(45<=vke){
            lblDurum.text = "Sonuç: \(String(vke)) -> Şişmansınız(Obez) - 3. Sınıf"
        }
        else{
            lblDurum.text = "Lütfen doğru değerler giriniz..."
        }
        
    }

}

