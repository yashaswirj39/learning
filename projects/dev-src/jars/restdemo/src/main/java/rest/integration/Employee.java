package rest.integration;

//import org.codehaus.jackson.map.annotate.JsonRootName;

//import org.codehaus.jackson.map.annotate.JsonRootName;

import javax.xml.bind.annotation.XmlRootElement;
//import javax.xml.bind.annotation.XmlType;

/**
 * Created by yashaswi on 3/9/17.
 */

//@JsonRootName( value = "Employee")
//@XmlType(propOrder = {"id", "name", "designation"})
public class Employee {

    private int id;
    private String name = "";
    private String designation = "";
    private String password = "";

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    /*public Employee(){
        super();
    }
    public Employee(int id, String name, String designation) {
        this.id = id;
        this.name = name;
        this.designation = designation;
    }*/

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDesignation() {
        return designation;
    }

    public void setDesignation(String designation) {
        this.designation = designation;
    }
}
