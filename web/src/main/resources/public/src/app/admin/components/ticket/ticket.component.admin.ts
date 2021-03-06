import {Component} from "@angular/core";
import {TicketComponent} from "./../../../user/ticket/ticket.component";

@Component({
    selector: 'ticket-admin',
    template: `
    <div class="row sb-backdown">
                <ticket>
                </ticket>
    </div>
    `,
    styleUrls: [ 'src/shared/css/loader.css', 'src/shared/css/general.css'],
    directives: [TicketComponent]
})
export class TicketAdminComponent {

}