import Foundation
import UIKit

class PokedexMain: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblTown: UILabel!
    
    var trainer: Trainer!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func setupView(){

        imageView.layer.cornerRadius = self.imageView.frame.size.width / 2
        imageView.clipsToBounds = true
        tableView.backgroundColor = UIColor.clearColor()
        tableView.tableFooterView = UIView(frame: CGRect.zero)
        
        lblName.text = trainer.name
        lblAge.text = String(trainer.age)
        lblTown.text = trainer.town
       
        if let url = NSURL(string: trainer.photo) {
            if let data = NSData(contentsOfURL: url) {
                imageView.image = UIImage(data: data)
            }
        }
        
        
        
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trainer.onHandPokemons.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell:PokemonCell = self.tableView.dequeueReusableCellWithIdentifier("cellPokemon")! as! PokemonCell
        cell.configureCellWithPokemon(trainer.onHandPokemons[indexPath.row])
        cell.selectionStyle = UITableViewCellSelectionStyle.None

        return cell
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        print("You selected cell #\(indexPath.row)!")
        self.performSegueWithIdentifier("detailPokemon", sender: trainer.onHandPokemons[indexPath.row])
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "detailPokemon"{
            let vc = segue.destinationViewController as! DetailPokemon
            vc.pokemon = sender as! Pokemon
        }
    }
    
    
}