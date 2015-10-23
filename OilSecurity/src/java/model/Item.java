/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author gomezhyuuga
 */
public class Item {

    String location;
    String type;
    int quantity;

    public Item(String location, String type, int quantity) {
        this.location = location;
        this.type = type;
        this.quantity = quantity;
    }

    @Override
    public String toString() {
        return "Tipo: " + type + "\n"
                + "Ubicación: " + location + "\n"
                + "Cantidad: " + quantity + "\n";
    }
}
