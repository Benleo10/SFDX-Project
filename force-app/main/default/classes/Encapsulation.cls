/**
 * @description       : Encapsulation Example
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-30-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class Encapsulation {

    //Encapsulation = Data Protection + Hide + Control

    Private integer mark;

    //Encapsulation hide data from direct access only through method we can able to access

    public void setMark(integer m)
    {
        if(m>0)
        {
            mark = m;
        }
    }

    public decimal getMark()
    {
        return mark;
    }

}