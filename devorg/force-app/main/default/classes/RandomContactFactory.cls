public class RandomContactFactory {
    public static List<Contact> generateRandomContacts(Integer numCons, String numLastName) {
        List<Contact> cons = new List<Contact>();
        
        for(Integer i=0;i<numCons;i++) {
            Contact a = new Contact(FirstName='TestAccount' + i, LastName = 'numLastName');
            cons.add(a);
        }
      return cons;
    }
}