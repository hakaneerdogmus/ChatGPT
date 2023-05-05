//
//  Onerilen.swift
//  ChatGpt
//
//  Created by Hakan ERDOĞMUŞ on 19.04.2023.
//

import Foundation
import SwiftUI


struct Onerilenler: Identifiable{
    var id : Int
    var name: String
    var one: String
    var two: String
    var three: String
    var four: String
    var five: String
    var selevtedText: String
   
}

let eglence = Onerilenler(id: 0,name: "Eğlence", one: "Astroloji", two: "Rüya Tabircisi", three: "Yazıyı Emoji'ye Dönüştür", four: "Hikaye Anlatıcı", five: "Şarkı Tavsiyesi", selevtedText: "")
let egitim = Onerilenler(id: 1, name: "Eğitim", one: "Bilim Sohbeti", two: "İngilizce Öğretmeni", three: "Çevirmen", four: "Matematik Öğretmeni", five: "Herhangi bir konuda kısa bir makale yaz", selevtedText: "")
let seyahat = Onerilenler(id: 2, name: "Seyahat", one: "Tatil Planlayıcısı", two: "Yerel Yemekler", three: "Gezmek için en iyi zaman", four: "Aktiviteler", five: "", selevtedText: "")
let saglıkVeBeslenme = Onerilenler(id: 3,name: "Sağlık ve Beslenme", one: "Yaşam Koçu", two: "Diyetisyen", three: "Abs-Güçlendirici Egzersiz Programı", four:"Yoga Pozları", five: "Vegan Yemek", selevtedText: "")
let rolYapma = Onerilenler(id: 4,name: "Rol Yapma", one: "Matrix'teki Neo gibi davran", two: "J.K.Rowling tarzı kısa hikaye yaz", three: "Max Payne hakkında Eminem tarzı şakalar", four: "Travis Scott tarzında şarkı sözleri", five: "Elon Musk gibi arabalar hakkında tavsiyeler", selevtedText: "")
let isVePazarlama = Onerilenler(id: 5,name: "İş ve Pazarlama", one: "E-Mail Oluşturucu", two:"Sosyal Medya Yöneticisi" , three: "İş Fikirleri", four: "Dijital Pazarlama Stratejileri", five: "", selevtedText: "")
let sosyal = Onerilenler(id: 6,name: "Sosyal", one: "Hediye Tavsiyesi", two: "Etkinlik Önerisi", three: "Buluşma uygulamalarında birinin kalbini kazan", four: "Kişisel Stilist", five: "", selevtedText: "")



let onerilenlerDizisi = [eglence, egitim, seyahat, saglıkVeBeslenme, rolYapma,isVePazarlama,sosyal]


