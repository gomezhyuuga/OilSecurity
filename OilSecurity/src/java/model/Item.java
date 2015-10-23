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

    public String location;
    public String type;
    public int quantity;
    public int id;

    public Item(String location, String type, int quantity, int id) {
        this.location = location;
        this.type = type;
        this.quantity = quantity;
        this.id = id;
    }

    @Override
    public String toString() {
        return id + ": " + location + " | " + type + " | " + quantity;
    }
}
