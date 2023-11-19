from support_functions import *

# Directory to Run 
directory = 'C:/Users/Reverse/Music/Windows-10-Pro-N/Pre-Install/Registry-Files/File Explorer'


# For Each File in the Directory
for filename in os.listdir(directory):
    
    # Get File
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
          
           # If File Encoding is UTF-16
           else:
                  
            # Fetch Registry Description  
            Description = fetch_registry_description(FILEPATH)
               
            # Get Parent Folder
            Folder = re.sub(r"\s+", '%20', str(read_metadata(FILEPATH)[3]).strip())
            
            # Get File Name
            File = re.sub(r"\s+", '%20', str(read_metadata(FILEPATH)[2]).strip())
            
            
            print('\n')
            # Create a Markdown Link
            print('* [' + str(read_metadata(FILEPATH)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 
                