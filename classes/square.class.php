<?php
/**
 * 
 * @author Muli Cohen
 * 
 * 
 */

class Square extends Shape { //Could use one class - 'Quadrangular' for both rect. and square. Just for the sake of simplicity. muliCohen
    
    public $width = 10;

    public function getPerimeter() {
        return ($this->width * 4);
    }
}
