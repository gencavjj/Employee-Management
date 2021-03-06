package com.employee;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class EmployeeDTO implements Serializable {

    private Integer employeeID;
    private String firstName;
    private String lastName;
    private String emailAddress;
    private List<String> notes; //= new ArrayList<>();


    public Integer getEmployeeID() { return employeeID; }

    public void setEmployeeID(Integer employeeID) { this.employeeID = employeeID; }

    public String getFirstName() { return firstName; }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public List<String> getNotes() { return notes; }

    public void setNotes(List<String> notes) { this.notes = notes; }
}
