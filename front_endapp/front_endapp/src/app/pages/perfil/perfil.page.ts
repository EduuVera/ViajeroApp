import { Component, OnInit } from '@angular/core';
import { UsuarioService } from 'src/app/services/Usuario.service';


@Component({
  selector: 'app-perfil',
  templateUrl: './perfil.page.html',
  styleUrls: ['./perfil.page.scss'],
})
export class PerfilPage implements OnInit {

  constructor(private service: UsuarioService) { }

 ngOnInit() {
  }
  getUsuarioAutenticado(){
    //const auth = getAuth();
    //const user = auth.currentUser;
  }
 }

