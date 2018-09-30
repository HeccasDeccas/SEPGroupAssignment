/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.*;
import javax.xml.bind.*;

public class StaffApplication implements Serializable {

    private String filePath;
    private Staffs staffs;

    public StaffApplication() {
        
    }

    public StaffApplication(String filePath, Staffs staffs) {
        super();
        this.filePath = filePath;
        this.staffs = staffs;
    }

    public String getFilePath() {
        return filePath;
    }

    public void setFilePath(String filePath) throws Exception {
       
        JAXBContext jc = JAXBContext.newInstance(Staffs.class);
        Unmarshaller u = jc.createUnmarshaller();
        this.filePath = filePath;        
        FileInputStream fin = new FileInputStream(filePath);
        staffs = (Staffs) u.unmarshal(fin); 	
        fin.close();
    }

    public void updateXML(Staffs staffs, String filePath) throws Exception {
        this.staffs = staffs;
        this.filePath = filePath;
        JAXBContext jc = JAXBContext.newInstance(Staffs.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(staffs, fout);
        fout.close();
    }
   
    public void saveStaffs() throws JAXBException, IOException {
        JAXBContext jc = JAXBContext.newInstance(Staffs.class);
        Marshaller m = jc.createMarshaller();
        m.setProperty(Marshaller.JAXB_FORMATTED_OUTPUT, true);
        FileOutputStream fout = new FileOutputStream(filePath);
        m.marshal(staffs, fout);
        fout.close();
    }

    public Staffs getStaffs() {
        return staffs;
    }

    public void setStaffs(Staffs staffs) {
        this.staffs = staffs;
    }
    
    public void editStaff(Staff staff, String name, String email, String password, String role) throws Exception{
        staffs.remove(staff);
        staff.updateDetails(name, email, password, role);
        staffs.addStaff(staff);
        updateXML(staffs,filePath);
    }
}//end class 
