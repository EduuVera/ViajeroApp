import { Injectable } from '@angular/core';
import { User } from '../shared/user.interface';

import { Router } from '@angular/router';



import { Observable, of } from 'rxjs';
import { switchMap } from 'rxjs/operators';
import { promise } from 'protractor';
@Injectable({
  providedIn: 'root',
})
export class AuthService {
  public user$: Observable<User>;

  constructor( private router: Router) {

  }


}
