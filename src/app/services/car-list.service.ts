import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';
import { Observable } from 'rxjs';
import { CarModel } from '../models/carsList.model';



@Injectable({
  providedIn: 'root'
})
export class CarListService {

  baseURL: string = 'http://localhost:3000';


  constructor(private http: HttpClient) { }

  getCars(Latitude: Number ,Longitude: Number ): Observable<CarModel[]> {
    return this.http.post<CarModel[]>(`${this.baseURL}/car_for_rents`,{Latitude: Latitude, Longitude: Longitude})
    //return this.http.get<CarModel[]>("http://localhost:3000/car_informations")

  }

  getOneCar(id: Number): Observable<CarModel> {
    return this.http.get<CarModel>(`${this.baseURL}/car_for_rents/${id}`)
  }

  postBook(From: string , To : string, id: Number): Observable<any> {
    return this.http.post<any>(`${this.baseURL}/Booking`, {Available_From: From, Available_Until: To, id:id})
  }
}
