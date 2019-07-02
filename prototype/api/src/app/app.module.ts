import { BrowserModule } from '@angular/platform-browser';
import { NgModule } from '@angular/core';
import { HttpClientModule } from '@angular/common/http';

import { RootComponent } from './root/root.component';
import { RootService } from './root/root.service';

@NgModule({
  declarations: [
    RootComponent
  ],
  exports: [ RootComponent ],
  imports: [
    BrowserModule,
    HttpClientModule
  ],
  providers: [RootService],
  bootstrap: [RootComponent]
})
export class AppModule { }
