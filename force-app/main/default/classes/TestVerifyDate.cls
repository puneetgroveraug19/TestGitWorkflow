@isTest
public class TestVerifyDate {
    @isTest static void testValidDate() {
        Date d1 = system.today() - 10;
        Date d2 = system.today() - 2;
        Date result = VerifyDate.checkDates(d1,d2);
        System.assertEquals(d2, result);
    }
    
    @isTest static void testInvalidDate() {
        Date d1 = system.today() - 60;
        Date d2 = system.today() - 2;
        
        Integer totalDays = Date.daysInMonth(d1.year(), d1.month());
		Date lastDay = Date.newInstance(d1.year(), d1.month(), totalDays);
		
        Date result = VerifyDate.checkDates(d1,d2);
        system.debug(result);
        system.debug(lastDay);
        System.assertEquals(lastDay, result);
    }
}