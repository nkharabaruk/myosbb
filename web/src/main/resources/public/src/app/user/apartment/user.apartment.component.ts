///<reference path="../../../../node_modules/@angular/http/src/http.d.ts"/>
import {Component, ViewChild,Input} from '@angular/core'
import {HTTP_PROVIDERS, Http, Headers, RequestOptions} from "@angular/http";
import {ApartmentModel} from "./Apartment.model";
import {ROUTER_DIRECTIVES} from "@angular/router";
import {ApartmentService} from './apartment.service'
import "rxjs/add/operator/toPromise";
import {MODAL_DIRECTIVES, BS_VIEW_PROVIDERS, ModalDirective} from "ng2-bootstrap/ng2-bootstrap";
import {CORE_DIRECTIVES} from "@angular/common";
import {TranslatePipe} from "ng2-translate/ng2-translate";
import {User} from "public/src/shared/models/User.ts";
import {FORM_DIRECTIVES, CORE_DIRECTIVES, FormBuilder, Control, ControlGroup, Validators} from '@angular/common';
import {HeaderComponent} from "../../header/header.component";

import {CurrentUserService} from "../../../shared/services/current.user.service";
import {CurrentOsbbService} from "../../../shared/services/current.osbb.service";
import {PageCreator} from "../../../shared/services/page.creator.interface";
import {HousePageObject} from "../../house/house.page.object";
@Component({
    selector: 'my-user-apartment',
    templateUrl: 'src/app/user/apartment/apartment.html',
    providers: [ApartmentService,CurrentOsbbService],
    directives: [ROUTER_DIRECTIVES,MODAL_DIRECTIVES, CORE_DIRECTIVES],
    styleUrls: ['src/app/user/apartment/styles.css'],
    viewProviders: [BS_VIEW_PROVIDERS],
    pipes:[TranslatePipe],
    inputs:['isAdmin']
})
export class UserApartmentComponent {
    isAdmin:boolean = false;
    Items:ApartmentModel[];
    private selectedApartment:ApartmentModel = {apartmentId: 0, square: 0, number: 0, house: {street: ''}};
    private emptyApartment:ApartmentModel = {square: 0, number: 0, house: {street: ''}};
    @ViewChild('deleteModal')
    public deleteModal:ModalDirective;
    @ViewChild('addModal')
    public addModal:ModalDirective;
    @ViewChild('editModal')
    public editModal:ModalDirective;
    active:boolean = true;
    private pageCreator:PageCreator<ApartmentModel>;
    private pageNumber:number = 1;
    private pageList:Array<number> = [];
    private totalPages:number;
    order:boolean = true;
    private defaultSorter:string = 'number';
    private currentUser:User;
    private apartmentToDelete:AprtmentModel;
    private allHouses:HousePageObject[] = [];
    private houseToAdd:HousePageObject = {street: ''};
    private isNumberValid:boolean = false;
    private currentOsbbId:number=1;
    numberControl:Control;
    addApartmentForm:ControlGroup;



    constructor(private apartmentService:ApartmentService,private builder:FormBuilder, private currentUserService:CurrentUserService,private currentOsbbService:CurrentOsbbService) {
        console.log("init items");
        this.Items = [];//[{square: '', number: '', house: {street: ''}}];
        this.numberControl=new Control('',this.numberValidator);
        this.addApartmentForm=builder.group({
            numberControl:this.numberControl
        });
    }


    ngOnInit() {
        this.currentUserService=HeaderComponent.currentUserService;
        this.currentUser = this.currentUserService.getUser();


       // this.currentUser = this.currentUserService.getUser();
        //this.currentOsbbId=this.currentOsbbService.getCurrentOsbbId();
        console.log("curr OSBB ID="+this.currentOsbbId);
        this.getApartmentsByPageNum(this.pageNumber);
        
        this.apartmentService.getAllHouses(this.currentOsbbId).subscribe(res=> {
            this.allHouses = res;
            console.log("house in subscribe"+this.allHouses.length);
        });

        
    }

    static numberValidator(control: Control): ValidationResult {

        if (this.isNumberValid==true){
            return { "numberValidator": true };
        } else

        return null;
    }


    onDeleteClick() {
        this.Items.splice(this.Items.indexOf(this.apartmentToDelete, 0), 1);
        this.apartmentService.deleteApartment(this.apartmentToDelete)
            .subscribe(res=>this.apartmentToDelete = res);
        // .subscribe(res=>this.Items.splice(this.Items.indexOf(res, 0), 1));

        // this.getApartmentsByPageNum(this.pageNumber);
        this.active = false;
        this.deleteModal.hide();


    }

    openDeleteModal(am) {
        this.active = true;
        this.apartmentToDelete = am;
        this.deleteModal.show();


    }


    openEditModal(am) {
        this.selectedApartment = am;
        this.editModal.show();
    }

    onEditApartmentSubmit() {

        //console.log('saving Apartment: ' + this.selectedApartment.apartmentId);
        this.apartmentService.editAndSave(this.selectedApartment).subscribe(res=> {
        });
        // this.getApartmentsByPageNum(this.pageNumber);
        this.active = false;
        this.editModal.hide();
        setTimeout(() => this.active = true, 0);
    }

    onAddApartmentSubmit() {

        if(! this.isNumberValid) {
            alert("Apartment is busy");
        } else {
            this.addModal.hide();
            this.apartmentService.addApartment(this.emptyApartment, this.houseToAdd.houseId)
                .subscribe();
            this.emptyApartment = {number: '', square: ''};
        }
    }

    openAddModal() {
       

        

        this.addModal.show();
    }


    chooseHouse(house:HousePageObject,number) {
        this.houseToAdd = house;

    }

    isApartmentNumberValid(value):boolean {
        console.log("value from input" + value);

        if(value>=1){
        this.apartmentService.isApartmentExist(value,this.houseToAdd.houseId).
            subscribe(res=> {
            this.isNumberValid = res;
            console.log("house id is:  " + this.houseToAdd.houseId + "  valid is : " + this.isNumberValid);
        }

    );}
        else this.isNumberValid=false;



    }


    sortBy(value:string) {
        console.log('sorted by ', value);
        this.order = !this.order;
        this.defaultSorter = value;
        console.log('order by asc', this.order);
        this.emptyArray();
        this.apartmentService.getSortedApartments(this.pageNumber, value, this.order)
            .subscribe((data) => {
                    this.pageCreator = data;
                    this.Items = data.rows;
                    this.preparePageList(+this.pageCreator.beginPage,
                        +this.pageCreator.endPage);
                    this.totalPages = +data.totalPages;
                },
                (err) => {
                    console.error(err)
                });
    }


    getApartmentsByPageNum(pageNumber:number) {
        console.log("getApartmentssByPageNum" + pageNumber);

        this.pageNumber = +pageNumber;
        this.emptyArray();
        return this.apartmentService.getSortedApartments(this.pageNumber, this.defaultSorter, this.order,this.currentOsbbId)
            .subscribe((data) => {
                    this.pageCreator = data;
                    this.Items = data.rows;
                    this.preparePageList(+this.pageCreator.beginPage,
                        +this.pageCreator.endPage);
                    this.totalPages = +data.totalPages;

                },
                (err) => {
                    console.error(err)
                });
    };

    prevPage() {
        this.pageNumber = this.pageNumber - 1;
        this.getApartmentsByPageNum(this.pageNumber)
    }

    nextPage() {
        this.pageNumber = this.pageNumber + 1;
        this.getApartmentsByPageNum(this.pageNumber)
    }

    emptyArray() {
        while (this.pageList.length) {
            this.pageList.pop();
        }
    }

    preparePageList(start:number, end:number) {
        for (let i = start; i <= end; i++) {
            this.pageList.push(i);
        }
    }

    getApartmentsByPageNumWithNumber(pageNumber:number, numberOfApartment:number) {
        console.log("getApartmentssByPageNum" + pageNumber + "with apartment number =" + numberOfApartment);
        this.pageNumber = +pageNumber;
        this.emptyArray();
        return this.apartmentService.getSortedApartmentsWithNumber(this.pageNumber, this.defaultSorter, this.order, numberOfApartment,this.currentOsbbId)
            .subscribe((data) => {
                    this.pageCreator = data;
                    this.Items = data.rows;
                    this.preparePageList(+this.pageCreator.beginPage,
                        +this.pageCreator.endPage);
                    this.totalPages = +data.totalPages;
                    // console.log("ITEM 0 =   "+Items[0]);
                },
                (err) => {
                    console.error(err)
                });
    };

    searchByNumber(searchTerm:number) {
        this.getApartmentsByPageNumWithNumber(this.pageNumber, searchTerm);
        console.log("search" + searchTerm);
    }

    clearSearchBox(searchterm) {
        if (searchterm.value === '')
            this.getApartmentsByPageNum(this.pageNumber);

    }

}

    


    
    
    
