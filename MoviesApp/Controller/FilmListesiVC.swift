//
//  FilmListesiVC.swift
//  MoviesApp
//
//  Created by Murat Sağlam on 8.03.2022.
//

import UIKit

class FilmListesiVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    var secilenKategoriAdi : String = ""
    @IBOutlet weak var collectionView: UICollectionView!
    var veriler = VeriSeti()
    var secilenFilm : Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        collectionView.dataSource = self
        collectionView.delegate = self
        print(secilenKategoriAdi)
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return veriler.filmleriGetir(kategori: secilenKategoriAdi).count
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let filmCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmcell", for: indexPath) as?  FilmCell {
            filmCell.cellDuzenle(film: veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row])
            return filmCell
        }
        return UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let genislik = view.bounds.width
        let hucreBoyutu = (genislik / 5 ) - 10
        return CGSize(width: hucreBoyutu, height: hucreBoyutu)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        secilenFilm = veriler.filmleriGetir(kategori: secilenKategoriAdi)[indexPath.row]
        performSegue(withIdentifier: "filmdetayi", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let filmDeratiVC = segue.destination as? FilmDetayiVC
        {
            filmDeratiVC.secilenFilm = secilenFilm
            
        }
    }
  
}
