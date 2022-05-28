import { User } from './../../shared/user.interface';
import { AuthService } from './../../services/auth.service';
import { Component } from '@angular/core';
import { Observable } from 'rxjs';

@Component({
  selector: 'app-verify-email',
  templateUrl: './verify-email.page.html',
  styleUrls: ['./verify-email.page.scss'],
})
export class VerifyEmailPage {

  constructor(private authSvc: AuthService) {}

  async onSendEmail(): Promise<void> {
    try {

    } catch (error) {
      console.log('Error->', error);
    }
  }

  ngOnDestroy(): void {
  }
}
