trigger RestrictContactByName on Contact (before insert, before update) {
    
    for(contact c: trigger.new){
        if(c.lastname == 'INVALIDNAME')
            c.addError('The last name "'+c.lastname+'" is not allowed for DML');
    }
}