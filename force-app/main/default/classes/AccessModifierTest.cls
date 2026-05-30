/**
 * @description       : Access Modifier Test
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 05-10-2026
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class AccessModifierTest {
    
    public integer x = 10;
    public integer y = 20;
    public integer z;

    public integer addition()
    {
        integer z = x+y;
        system.debug('Addition = '+z);
        return z;
    } 
}