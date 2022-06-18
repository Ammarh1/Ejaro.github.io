import { OneCarComponent } from './components/one-car/one-car.component';
import { CarsListComponent } from './components/cars-list/cars-list.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [
  {path: '', component: CarsListComponent },
  {path: 'item/:id', component: OneCarComponent }

];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
export const routingcomponents = [CarsListComponent, OneCarComponent]
