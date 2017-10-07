package shopping;

import java.util.HashMap;

/**
 * Created by chathuri on 10/7/17.
 */
public class Cart {
    HashMap<String, Integer> cartItems;
    public Cart(){
        cartItems = new HashMap<String, Integer>();

    }
    public HashMap getCartItems(){
        return cartItems;
    }

    public void addToCart(String itemId, int qty){
        if(cartItems.containsKey(itemId)){
            qty = cartItems.get(itemId)+qty;
        }
        cartItems.put(itemId, qty);
    }

    public HashMap<String, Integer> getAllCartItems(){
        return cartItems;
    }

    public void removeItems(String itemId) throws ItemNotFoundException{
        if(!cartItems.containsKey(itemId)) throw new ItemNotFoundException();
        cartItems.remove(itemId);
    }

    public void removeItems(String itemId, int qty) throws ItemNotFoundException {
        if(!cartItems.containsKey(itemId)) throw new ItemNotFoundException();
        if(qty < cartItems.get(itemId)) {
            cartItems.put(itemId, cartItems.get(itemId)-qty);
        } else {
            removeItems(itemId);
        }
    }

    public void clearCart(){
        cartItems.clear();
    }

}