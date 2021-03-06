import {ManagerComponent} from "./manager.component";
import {RouterConfig} from "@angular/router";
import {TicketManagerComponent} from "./components/ticket/ticket.component.manager";
import {TicketSingleManagerComponent} from "./components/ticket/single.ticket.component.manager";
import {ManagerLoginGuard} from "../../shared/guard/manager.login.guard";
import {OsbbBillComponent} from "./../user/bills/osbb/osbb.bill.component";
import {ProviderComponent} from "../user/provider/provider.component";
import {ProviderInfoComponent} from "./../user/provider/provider-info";
import {EventComponent} from "../event/event.component";
import {EventShowComponent} from "../event/event.show.component";
import {HomeWallComponent} from "./../home/home_wall/home.wall.component";
import {ContractComponent} from "./../user/contract/contract.component";
import {CalendarHomeComponent} from "../home/calendar/calendar.home.component";
import {UserProfileManagerComponent} from "./components/user/user.profile.manager.component";

export const managerRoutes:RouterConfig = [
    {
        path: 'manager',
        component: ManagerComponent,
        canActivate: [ManagerLoginGuard],

        children: [
            {path: 'wall', component: HomeWallComponent},
            {path: '', redirectTo: 'wall', pathMatch: 'full'},
            {path: 'ticket', component: TicketManagerComponent},
            {path: 'ticket/:id', component: TicketSingleManagerComponent},
            {path: 'osbb/bill', component: OsbbBillComponent},
            {path: 'provider', component: ProviderComponent},
            {path: 'provider/info/:id', component: ProviderInfoComponent},
            {path: 'events', component: EventComponent},
            {path: 'event/:id', component: EventShowComponent},
            {path: 'calendar', component: CalendarHomeComponent},
            {path: 'contract', component: ContractComponent},
            {path: 'friend/:id', component: UserProfileManagerComponent},



        ]
    },


];