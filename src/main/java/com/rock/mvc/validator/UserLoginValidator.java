package com.rock.mvc.validator;

import com.rock.mvc.entity.user.UserLogin;
import com.rock.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserLoginValidator implements Validator {

    private final UserService userService;
    private final BCryptPasswordEncoder bCryptPasswordEncoder;

    @Autowired
    public UserLoginValidator(UserService userService, BCryptPasswordEncoder bCryptPasswordEncoder) {
        this.userService = userService;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return UserLogin.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        UserLogin userLogin = (UserLogin) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "valid.email");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.password");

        //userLogin.setPassword(bCryptPasswordEncoder.encode(userLogin.getPassword()));
        if (userService.getUserByEmail(userLogin.getEmail()) != null){
            if (!userService.getUserByEmail(userLogin.getEmail()).getEmail().equals(userLogin.getEmail())){
                errors.rejectValue("email", "loginMatch.email");
            }
        }

        if (!userLogin.getPassword().isEmpty()){
            if (userService.getUserByEmail(userLogin.getEmail()) != null){
                if (!bCryptPasswordEncoder.matches(userLogin.getPassword(), userService.getUserByEmail(userLogin.getEmail()).getPassword())){
                    errors.rejectValue("password", "loginMatch.password");
                }
            }
        }
    }
}
