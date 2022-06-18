import { CarModel } from './../../models/carsList.model';
import { Component, OnInit } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { CarListService } from 'src/app/services/car-list.service';
import {NgbDateStruct, NgbDatepickerConfig, NgbCalendar, NgbDate} from '@ng-bootstrap/ng-bootstrap';


@Component({
  selector: 'app-one-car',
  templateUrl: './one-car.component.html',
  styleUrls: ['./one-car.component.scss'],
  providers: [NgbDatepickerConfig]
})
export class OneCarComponent implements OnInit {
  Start!: NgbDateStruct;
  End!: NgbDateStruct;
  markDisabled: any
  message$! :string 
  id!: Number 

  CarImages = new Array()
  CarInformation!: CarModel

  constructor(private activatedRoute: ActivatedRoute, private services: CarListService) { 
  }

  

    ngOnInit(): void {
      this.activatedRoute.params.subscribe(params => {
       this.id = params['id'];
          this.services.getOneCar(this.id).subscribe(response => {
          console.log(response)
          this.CarInformation = response
          let z = this.CarInformation.image.split(" ")
          for (let i =0 ; i < z.length ; i++) {
            this.CarImages[i] = {image: z[i], thumbImage: z[i]}
          }
        }) 
    })

    



    setTimeout(()=>{
      const From_date = this.CarInformation.Available_From.split("-")
      const To_date = this.CarInformation.Available_Until.split("-")
      this.markDisabled = (date: NgbDate) =>
      date.month < Number (From_date[1]) || (date.day < Number (From_date[0]) && date.month <= Number (From_date[1])) ||
      date.month > Number (To_date[1]) || (date.day > Number (To_date[0]) && date.month >= Number (To_date[1])) 
     },2000)

  }

  onSubmit(): void {
    let from = this.Start.day + "-" + this.Start.month + "-" + this.Start.year
    let  to = this.End.day + "-" + this.End.month + "-" + this.End.year

    this.services.postBook (from, to, this.id).subscribe ((response => {
      this.message$ = response.message
    }))
    


  }


}
