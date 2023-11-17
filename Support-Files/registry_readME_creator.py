from support_functions import *

# Directory to Run the Files   
directory = 'C:/Users/Reverse/Music/Windows-10-Pro-N/Pre-Install/Registry-Files/Test_Folder'
  
for filename in os.listdir(directory):
    f = os.path.join(directory, filename)
    
    # Checking if it is a file
    if os.path.isfile(f):
        
       # Get File Extension
       file_name, file_extension = os.path.splitext(f)
       
       # if File is Registry File
       if file_extension == ".reg":

           # Setting Filepath
           FILEPATH = f.replace('\\', '/')

           # Detect File Encoding  
           encoding = detect_encoding(FILEPATH)
           
           # If File is UTF-8
           if str(encoding['encoding']).strip() == "ascii":
               
               # Turn File to UTF-16
               FILEPATH = utf8_to_utf16(FILEPATH)
               
               # Re-detect New File Encoding  
               encoding = detect_encoding(FILEPATH)
            
           # If File Does not Contain Github URL (So isn't Processed)
           if check_file_for_string(FILEPATH) is True:
                
                # Do the Processing  
                Description = fetch_registry_description(FILEPATH)

                print('\n')
                print('* [' + str(read_metadata(FILEPATH)[2]).strip() + ']()' + ' - ' + str(Description).strip() + '.') 
                