import {Injectable} from "@angular/core";
import {Headers, Http} from "@angular/http";
import {Observable} from "rxjs/Observable";
import "rxjs/add/operator/map";
import {Event} from "./event.interface";
import "rxjs/add/operator/toPromise";
import ApiService = require("../../../shared/services/api.service");

@Injectable()
export class EventService {

    private getEventUrl = ApiService.serverUrl + '/restful/event?pageNumber=';
    private delEventUrl = ApiService.serverUrl + '/restful/event/';
    private delAllEventUrl = ApiService.serverUrl + '/restful/event/';
    private updateEventUrl = ApiService.serverUrl + '/restful/event/';
    private postEventUrl = ApiService.serverUrl + '/restful/event';

    constructor(private _http:Http) {
    }

    getAllEvents(pageNumber:number):Observable<any> {
        return this._http.get(this.getEventUrl + pageNumber)
            .map((response)=> response.json())
            .catch((error)=>Observable.throw(error));
    }

    getAllEventsSorted(pageNumber:number, name:string, order:boolean):Observable<any> {
        return this._http.get(this.getEventUrl + pageNumber + '&&sortedBy=' + name + '&&asc=' + order)
            .map((response)=> response.json())
            .catch((error)=>Observable.throw(error));
    }

    deleteEventById(eventId:number) {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        let url = this.delEventUrl + eventId;
        console.log('delete event by id: ' + eventId);
        return this._http.delete(url, {headers: headers})
            .toPromise()
            .catch((error)=>console.error(error));
    }

    deleteAllEvents() {
        console.log('delete all events');
        return this._http.delete(this.delAllEventUrl)
            .toPromise()
            .catch((error)=>console.error(error));
    }

    editAndSave(event:Event) {
        if (event.eventId) {
            console.log('updating event with id: ' + event.eventId);
            this.put(event);
        }
    }

    put(event:Event) {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        return this._http.put(this.updateEventUrl, JSON.stringify(event), {headers: headers})
            .toPromise()
            .then(()=>event)
            .catch((error)=>console.error(error));
    }

    addEvent(event:Event): Promise<Event> {
        let headers = new Headers();
        headers.append('Content-Type', 'application/json');
        return this._http.post(this.postEventUrl, JSON.stringify(event), {headers: headers})
            .toPromise()
            .then(()=>event)
            .catch((error)=>console.error(error));
    }

}