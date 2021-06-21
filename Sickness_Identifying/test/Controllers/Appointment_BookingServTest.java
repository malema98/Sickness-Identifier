/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import Beans.BookingBean;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author CHRIS MALEMA
 */
public class Appointment_BookingServTest {
    
    private BookingBean book;
        private MockHttpServletRequest request;
        private MockHttpServletResponse response;
       public Appointment_BookingServTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }
    
    @Before
    public void setUp() {
        BookingBean book=new BookingBean();
        book.setName("chris");
        book.setCity("pretoria");
        book.setContacts("0603155609");
        book.setEmail("chris@gmail.com");
        book.setGender("male");
        book.setProvince("guateng");
        book.setPostal_code("0001");
        book.setStreet("celliers");
        book.setAppointment_date("12/july/2021");
        book.setTime("10:00:AM");
           
    }
    
    @After
    public void tearDown() {
    }

    /**
     * Test of processRequest method, of class Appointment_BookingServ.
     */
    @Test
    public void testProcessRequest() throws Exception {
        
        BookingBean[] appBook=new BookingBean[3];
        appBook[0]=book;
        Assert.assertEquals("chris", book.getName());
        Assert.assertEquals("pretoria", book.getCity());
        Assert.assertEquals("0603155609", book.getContacts());
        Assert.assertEquals("chris@gmail.com", book.getEmail());
        Assert.assertEquals("male", book.getGender());
        Assert.assertEquals("guateng", book.getProvince());
        Assert.assertEquals("0001", book.getPostal_code());
        Assert.assertEquals("celliers", book.getStreet());
        Assert.assertEquals("12/july/2021", book.getAppointment_date());
        Assert.assertEquals("10:00:AM", book.getTime());
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of doGet method, of class Appointment_BookingServ.
     */
    @Test
    public void testDoGet() throws Exception {
        System.out.println("doGet");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Appointment_BookingServ instance = new Appointment_BookingServ();
        instance.doGet(request, response);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of doPost method, of class Appointment_BookingServ.
     */
    @Test
    public void testDoPost() throws Exception {
        System.out.println("doPost");
        HttpServletRequest request = null;
        HttpServletResponse response = null;
        Appointment_BookingServ instance = new Appointment_BookingServ();
        instance.doPost(request, response);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }

    /**
     * Test of getServletInfo method, of class Appointment_BookingServ.
     */
    @Test
    public void testGetServletInfo() {
        System.out.println("getServletInfo");
        Appointment_BookingServ instance = new Appointment_BookingServ();
        String expResult = "";
        String result = instance.getServletInfo();
        assertEquals(expResult, result);
        // TODO review the generated test code and remove the default call to fail.
        fail("The test case is a prototype.");
    }
    
}
