//import textformfield_template_file_path

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
