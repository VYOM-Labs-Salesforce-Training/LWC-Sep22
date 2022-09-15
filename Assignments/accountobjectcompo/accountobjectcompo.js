/**
 * @ Author: Prajakta kulkarni
 * @ Create Time: 2022-09-15 12:22:13
 * @ Modified by: Your name
 * @ Modified time: 2022-09-15 12:51:22
 * @ Description:create LWC component to display account Information using wire adapter.

 */

import { LightningElement , wire} from 'lwc';
import getdata from '@salesforce/apex/Accountobjectfetchdata.acclist';
export default class Accountobjectcompo extends LightningElement {
    @wire (getdata)
    accounts;
}
