//
//  FilmCell.swift
//  MoviesApp
//
//  Created by Murat Sağlam on 8.03.2022.
//

import UIKit

class FilmCell: UICollectionViewCell {
    
    
    
    @IBOutlet weak var imgFilm: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        imgFilm.layer.cornerRadius = 10
    }
    
    func cellDuzenle(film : Film) {
        imgFilm.image = UIImage(named: film.goruntuAdi)
    }
    
    
}
