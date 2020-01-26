<?php
/**
 * 
 * @author Muli Cohen
 * 
 * 
 */

abstract class ShapeFactory {

    static public function createShape($shape) {
        switch ($shape) {
            case 'square':
                $instance = new Square();
                return $instance->getPerimeter();
                break;
            case 'rectangle':
                $instance = new Rectangle();
                return $instance->getPerimeter();
                break;
            //case 'triangle' etc...
        }
    }
}