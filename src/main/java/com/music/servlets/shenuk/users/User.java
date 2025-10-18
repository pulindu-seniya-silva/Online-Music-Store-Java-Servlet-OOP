package com.music.servlets.shenuk.users;

// User model class
public class User {
    private String uname;
    private String uemail;
    private String upwd;
    private String umobile;

    // Constructor
    public User(String uname, String uemail, String upwd, String umobile) {
        this.uname = uname;
        this.uemail = uemail;
        this.upwd = upwd;
        this.umobile = umobile;
    }

    // Getters
    public String getUname() { return uname; }
    public String getUemail() { return uemail; }
    public String getUpwd() { return upwd; }
    public String getUmobile() { return umobile; }

    // Setters
    public void setUname(String uname) { this.uname = uname; }
    public void setUemail(String uemail) { this.uemail = uemail; }
    public void setUpwd(String upwd) { this.upwd = upwd; }
    public void setUmobile(String umobile) { this.umobile = umobile; }
}
