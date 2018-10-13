/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import java.io.Serializable;
import javax.xml.bind.annotation.*;
import java.util.ArrayList;

/**
 *
 * @Created on : Aug 11, 2018, 9:34:31 PM
   @Author     : Declan Schillert, Ash Wan, Bec Helou, Brooklyn Ciba, Jamie Chan, Jarrod Watts
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlRootElement(name = "staffs", namespace = "http://www.uts.edu.au/31284/wsd-staffs")
public class Staffs implements Serializable {

    @XmlElement(name = "staff")
    private ArrayList<Staff> list = new ArrayList<>();

    public ArrayList<Staff> getList() {
        return list;
    }

    public void addStaff(Staff staff) {
        list.add(staff);
    }

    public boolean matchStaffNameID(String name, String ID) {
        for (Staff staff : list) {
            if (staff.matchName(name) && staff.matchID(ID)){
                return true;
            }
        }
        return false;
    }
    
    public Staff getStaff(String ID) {
        for (Staff staff : list) {
            if (staff.matchID(ID)) {
                return staff;
            }
        }
        return null;
    }

    public Staff login(String ID, String password) {        
        for (Staff staff : list) {
                if (staff.matchID(ID) && staff.matchPassword(password)) {
                return staff; 
            }
        }
        return null; 
    }

    public ArrayList<Staff> getRemoveList(String ID){
        ArrayList<Staff> removelist = new ArrayList<>();
        for(Staff staff:list)
            if(staff.matchID(ID))
                removelist.add(staff);
        return removelist;
    }
    
    public void remove(Staff staff) {
        list.removeAll(getRemoveList(staff.getID()));
    }
    
    public void updateList(Staff staff){
        remove(staff);
        addStaff(staff);
    }
}//end class
