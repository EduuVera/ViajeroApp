import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';

@Injectable({
  providedIn: 'root'
})
export class ServiciosService {
  tipo_servicios : any[] = [];
 
  constructor(private http:HttpClient) {
 }

}
