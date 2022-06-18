import {NgbDate} from '@ng-bootstrap/ng-bootstrap';

export class CarModel {
    constructor (
        public id: Number,
        public make: string, 
        public model: string,
        public Kilometers_Traveled: string, 
        public Latitude: Number,
        public Longitude: Number, 
        public Images: string[], 
        public Available_From: string, 
        public Available_Until: string,
        public image: string
    ) {}
}