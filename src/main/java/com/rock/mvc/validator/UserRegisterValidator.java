package com.rock.mvc.validator;

import com.rock.mvc.entity.user.User;
import com.rock.mvc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

@Component
public class UserRegisterValidator implements Validator {

    private final UserService userService;

    @Autowired
    public UserRegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return User.class.equals(aClass);
    }

    @Override
    public void validate(Object o, Errors errors) {
        User user = (User) o;

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName", "valid.username");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "valid.email");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "valid.password");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword", "valid.confirmPassword");

        if (userService.getUserByName(user.getUserName()) != null){
            if (userService.getUserByName(user.getUserName()).getUserName().equals(user.getUserName())){
                errors.rejectValue("userName", "user.exist");
            }
        }

        if (userService.getUserByEmail(user.getEmail()) != null){
            if (userService.getUserByEmail(user.getEmail()).getEmail().equals(user.getEmail())){
                errors.rejectValue("email", "email.exist");
            }
        }

        if (!user.getConfirmPassword().isEmpty()){
            if (!user.getPassword().equals(user.getConfirmPassword())){
                errors.rejectValue("confirmPassword", "match.confirmPassword");
            }
        }
    }
}
