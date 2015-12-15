function Cart(data) {
    
    this.addWine = function (wine) {
        this.wines.push(wine);

        // insert the new cart into the storage as string
        localStorage.setItem('wineCart', JSON.stringify(this));
    };
    this.clearCart = function () {
        this.wines = [];
        localStorage.clear();
    }

    this.wines = (!!data && !!data.wines) ? data.wines : [];
};

//create a new Object Wine as a key-value pairs
function Wine(id, price) {
    this.wineId = id;
    this.price = price;
};