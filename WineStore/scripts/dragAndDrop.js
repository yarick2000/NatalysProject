var data = JSON.parse(localStorage.getItem('wineCart'));
var currentCart = new Cart(data);

function dragAndDropHendlers() {

    var wineImages = document.getElementsByClassName("dragableToCart");

    var shoppingCartDropzone = document.getElementById("shoppingCart");

    var shoppingCart = document.querySelectorAll("#shoppingCart ul")[0];

    //create a new Object Cart


    //set the currentCart to be empty

    updateShoppingCartUI();



    for (var i = 0; i < wineImages.length; i++) {
        wineImages[i].addEventListener("dragstart", function (ev) {
                ev.dataTransfer.effectAllowed = 'copy';
                ev.dataTransfer.setData("Text", this.getAttribute("id"));
        }, false);
    }

    shoppingCartDropzone.addEventListener("dragover", function (ev) {
        if (!!ev.preventDefault)
            ev.preventDefault();
        ev.dataTransfer.dropEffect = "copy";
        return false;
    }, false);

    shoppingCartDropzone.addEventListener("drop", function (ev) {
        if (!!ev.stopPropagation) {
            ev.stopPropagation();
        }
        var wineId = ev.dataTransfer.getData("Text");
        var element = document.getElementById(wineId);
        if (!!element) {
            addWineToShoppingCart(element, wineId);
        }
        ev.stopPropagation();

        return false;
    }, false);

    function addWineToShoppingCart(item, id) {
        var price = item.getAttribute("data-price");

        var wine = new Wine(id, price);
        currentCart.addWine(wine);

        updateShoppingCartUI();
    }

    function updateShoppingCartUI() {
        shoppingCart.innerHTML = "";
        for (var i = 0; i < currentCart.wines.length; i++) {
            var liElement = document.createElement('li');
            var wine = currentCart.wines[i];
            liElement.innerHTML = wine.wineId + " " + wine.price;
            shoppingCart.appendChild(liElement);
        }
    }
}
