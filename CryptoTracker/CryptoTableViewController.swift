

import UIKit

final class CryptoTableViewController: UITableViewController {
    
    let currencies: [CurrencyType] = [.btc, .eth, .ltc, .xrp, .xmr, .neo]
    let reuseIndentifier = String(describing: CryptoTableViewCell.self)
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return currencies.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableViewCell = tableView.dequeueReusableCell(withIdentifier: reuseIndentifier, for: indexPath)
        
        if let cryptoTableViewCell = tableViewCell as? CryptoTableViewCell {
            let currencyType = currencies[indexPath.row]
            cryptoTableViewCell.formatCell(withCurrencyType: currencyType)
        }
        
        return tableViewCell
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Cryptocurrency Prices"
    }

}

