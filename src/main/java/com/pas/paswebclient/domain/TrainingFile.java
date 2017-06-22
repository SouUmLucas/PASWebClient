/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.pas.paswebclient.domain;

import java.util.ArrayList;

/**
 *
 * @author lucas
 */
public class TrainingFile extends File {
    private ArrayList<TrainingMessage> trainingMessages = new ArrayList<>();

    public ArrayList<TrainingMessage> getTrainingMessages() {
        return trainingMessages;
    }

    public void setTrainingMessages(ArrayList<TrainingMessage> trainingMessages) {
        this.trainingMessages = trainingMessages;
    }
    
}
