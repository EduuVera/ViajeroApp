import { Component, OnInit } from '@angular/core';
import { AuthService } from 'src/app/services/auth.service';
import { ServiciosService } from './../../services/servicios.service';

@Component({
  selector: 'app-menu',
  templateUrl: './menu.page.html',
  styleUrls: ['./menu.page.scss'],
})
export class MenuPage {

  lista: any= [];

  constructor(private serviciosservice: ServiciosService) {
    
    
  }
}
