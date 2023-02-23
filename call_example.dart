//import textformfield_template_file_path

//username
defaultTextFormField(
                  controller: userNameController,
                  keyboardType: TextInputType.text,
                  label: 'User Name',
                  isPassword: false,
                  validate: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'user name should not be empty!';
                    }
                    return null;
                  },
                )
//password
defaultTextFormField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  label: 'Password',
                  isPassword: isPassword,
                  suffixIcon: isPassword ? Icons.visibility_off : Icons.visibility,
                  suffixPressed: (){
                    setState(() {
                      isPassword = !isPassword;
                    });
                  },
                  validate: (value)
                  {
                    if(value!.isEmpty)
                    {
                      return 'password should not be empty!';
                    }
                    return null;
                  },
                )
