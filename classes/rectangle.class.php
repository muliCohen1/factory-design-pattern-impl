<?php
/**
 * 
 * @author Muli Cohen
 * 
 * 
 */

class Rectangle extends Shape { //Could use one class - 'Quadrangular' for both rect. and square. Just for the sake of simplicity. muliCohen
    
    private $width = 5;
    private $height = 20;
    
    public function getPerimeter() {
        return (($this->width + $this->height) * 2);
    }
}