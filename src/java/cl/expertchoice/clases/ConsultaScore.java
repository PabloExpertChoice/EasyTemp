/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.expertchoice.clases;

/**
 *
 * @author ignacio
 */
public class ConsultaScore {
    private int[] score;

    public ConsultaScore() {
    }

    public ConsultaScore(int[] score) {
        this.score = score;
    }

    public int[] getScore() {
        return score;
    }

    public void setScore(int[] score) {
        this.score = score;
    }

    @Override
    public String toString() {
        return "ConsultaScore{" + "score=" + score + '}';
    }
}
