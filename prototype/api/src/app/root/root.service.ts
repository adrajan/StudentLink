import { Injectable } from '@angular/core';
import { HttpClient } from '@angular/common/http';

@Injectable({
  providedIn: 'root'
})
export class RootService {

  constructor(private http: HttpClient) { }

  getAPIData(){
    //return this.http.get('https://jsonplaceholder.typicode.com/users');
    return this.http.get('/api/getClasses');
    //return this.http.get('https://localhost/users');
  }

  postAPIData(){
    return this.http.post('/api/login', {'userId' : 'test', 'password' : 'abc123'})
  }
}