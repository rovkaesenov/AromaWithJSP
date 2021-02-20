package com.rock.mvc.entity.user;

import lombok.Data;
import org.hibernate.validator.constraints.Email;

import javax.persistence.Entity;

@Data
public class UserLogin {

    @Email(message = "Please enter correct email, email isn't correct")
    private String email;


    private String password;
}
