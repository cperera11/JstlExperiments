/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cpj.jstlexperiments.model;

import java.util.Random;

/**
 *
 * @author CPere
 */
public class GameService {
    
   
    public String produceColor() {
        return "Brown";

    }
   public String produceWinMessage() {
        return "You guessed the secret color correctly. The color is ";

    }
    public String produceTryAgainMessage() {
        return "Wrong guess, try again.";

    }
}
