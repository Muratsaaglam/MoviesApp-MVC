//
//  KategoriCell.swift
//  MoviesApp
//
//  Created by Murat Sağlam on 8.03.2022.
//

import UIKit

class KategoriCell: UITableViewCell {
    
    
    @IBOutlet weak var imgKategori: UIImageView!
    
    @IBOutlet weak var lblKategoriAdi: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        
        imgKategori.layer.cornerRadius = 10
    }
    
    func cellDuzenle(filmKategori : FilmKategori) {
            imgKategori.image = UIImage(named: filmKategori.goruntuAdi)
            lblKategoriAdi.text = filmKategori.kategoriAdi
        }
  
}


