class ValidationMixin 
{
  String? validateEmail(String? value) 
  {
    String emailPattern = "^[a-zA-Z0-9.!#\$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*\$";
    
    if(!value!.contains(RegExp(emailPattern))) 
    {
      return 'Please Enter a Valid Email';
    }
  }

  String? validatePassword(String? value) 
  {/*
    Minimum 1 Upper case
    Minimum 1 lowercase
    Minimum 1 Numeric Number
    Minimum 1 Special Character
    Common Allow Character ( ! @ # $ & * ~ ) 
    */
    String  passwordPattern = r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    
    if(!value!.contains(RegExp(passwordPattern))) 
    {
      return 'Password be at least 8 characters including uppercase, lowercase, number and !@#\$&*~';
    }
  }
}