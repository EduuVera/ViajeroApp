import { Component } from '@angular/core';
import { MenuController } from '@ionic/angular';

@Component({
  selector: 'app-root',
  templateUrl: 'app.component.html',
  styleUrls: ['app.component.scss'],
})
export class AppComponent {
  public appPages = [
    { title: 'Categorias', url: 'categoria-list'},
    {title:"Usuarios",url:"usuario-list"},
    {title:"Lugares",url:"alquiler-list-admn"}
    
    
   /*  { title: 'Spam', url: '/folder/Spam', icon: 'warning' }, */
  ];
  constructor(private menu: MenuController){
 console.log(this.appPages)
  }
  openFirst() {
    this.menu.enable(true, 'first');
    this.menu.open('first');
  }

  openEnd() {
    this.menu.open('end');
  }

  openCustom() {
    this.menu.enable(true, 'custom');
    this.menu.open('custom');
  }
}
