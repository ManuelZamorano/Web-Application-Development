using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for UserInfo
/// </summary>
public class UserInfo
{
    String firstName;
    String middleInitials;
    String lastName;
    String emailAddress1; /*User's primary key*/
    String emailAddress2;
    String streetAddress;
    String aptNo;
    String city;
    String state;
    String zip;
    String homePhone;
    String jobExperience;
    public String FirstName
    {
        get { return firstName; } /*ADD THE PROPERTIES AS SHOWN*/
        set { firstName = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String LastName
    {
        get { return lastName; }
        set { lastName = value; }
    }
    public String MiddleInitials
    {
        get { return middleInitials; } /*ADD THE PROPERTIES AS SHOWN*/
        set { middleInitials = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String EmailAddress1
    {
        get { return emailAddress1; } /*ADD THE PROPERTIES AS SHOWN*/
        set { emailAddress1 = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String EmailAddress2
    {
        get { return emailAddress2; } /*ADD THE PROPERTIES AS SHOWN*/
        set { emailAddress2 = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String StreetAddress
    {
        get { return streetAddress; } /*ADD THE PROPERTIES AS SHOWN*/
        set { streetAddress = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String AptNo
    {
        get { return aptNo; } /*ADD THE PROPERTIES AS SHOWN*/
        set { aptNo = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String City
    {
        get { return city; } /*ADD THE PROPERTIES AS SHOWN*/
        set { city = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String State
    {
        get { return state; } /*ADD THE PROPERTIES AS SHOWN*/
        set { state = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String Zip
    {
        get { return zip; } /*ADD THE PROPERTIES AS SHOWN*/
        set { zip = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String HomePhone
    {
        get { return homePhone; } /*ADD THE PROPERTIES AS SHOWN*/
        set { homePhone = value; } /*FOR THE REMAINING FIELDS.*/
    }
    public String JobExperience
    {
        get { return jobExperience; } /*ADD THE PROPERTIES AS SHOWN*/
        set { jobExperience = value; } /*FOR THE REMAINING FIELDS.*/
    }
}