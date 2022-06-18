import { CarListService } from './../../services/car-list.service';
import { CarModel } from '../../models/carsList.model';
import { HttpClient } from '@angular/common/http';
import { Component, OnInit } from '@angular/core';

@Component({
  selector: 'app-cars-list',
  templateUrl: './cars-list.component.html',
  styleUrls: ['./cars-list.component.scss']
})
export class CarsListComponent implements OnInit {

  Cars! : CarModel[] ;
  image  = new  Array();
  //static location in Ejaro's Location
  Latitude = 21.714099524259847;
  Longitude =   39.10149741930961;
  

  constructor(
    private services: CarListService,
    ) {}

  ngOnInit(): void {
    this.services.getCars(this.Latitude , this.Longitude).subscribe(
      (response) => {     
        this.Cars = response;
      })

      setTimeout(()=>{
      for (let i =0 ; i <this.Cars.length ; i++) {
        let z =this.Cars[i].image.split(" ")
        this.image[i]= z[0]
      }
      },1000)
      

      

      
      

     

    }

  


}
