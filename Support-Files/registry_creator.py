import os
import datetime
import platform
from pathlib import Path
import re
import codecs
from itertools import pairwise
import chardet
from support_functions import *

# Directory to Run the Files   
directory = 'C:/Users/Reverse/Music/Windows-10-Pro-N/Pre-Install/Registry-Files/Test_Folder'

count = 0 

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
           if check_file_for_string(FILEPATH) is False:
                
                # Do the Processing
                lines = identify_lines(FILEPATH)
                registry = find_registry_tweak(lines,FILEPATH).strip() 
                urls = read_metadata(FILEPATH)[4]    
                Description = file_first_sentence(FILEPATH)
                
                # No Description Identified - Try Specific Line
                if Description is None:
                    
                    Description = '; ' + str(fetch_registry_description(FILEPATH).strip()) + '.\n'
                  
                if Description is None:
                    
                    # No Description Identified - Try Specific Line
                    print("Currently Processing ---> ", os.path.splitext(os.path.basename(FILEPATH))[0])
                    Description = input("Give me a Registry Description: ")
                    Description = '; ' + Description + '\n'  
                                       
                else:
                    count = count + 1
                    pass
                
                Comments = fetch_description_comments(FILEPATH,Description)
                if isinstance(Comments, list):
                    if len(Comments) > 0:
                        try:
                            open(FILEPATH,'w', encoding="utf-16").close()
                            
                            with open(FILEPATH,'w', encoding="utf-16") as file:
                                file.write("Windows Registry Editor Version 5.00".strip())
                                file.write('\n')
                                file.write('\n')
                                file.write('; ' + str(read_metadata(FILEPATH)[2]).strip() + '\n')
                                file.write('; Created by Georgios Zachariadis on ' + str(read_metadata(FILEPATH)[1]).strip() + '\n')
                                file.write('; Modified on ' + str(read_metadata(FILEPATH)[0]).strip() + '\n')
                                file.write('; Categorized under ' + str(read_metadata(FILEPATH)[3]).strip() + '\n')
                                file.write('; File Encoding is ' + str(encoding['encoding']).strip() + '.\n')
                                file.write('; This file was automatically processed as part of the https://github.com/gzachariadis/Windows-10 Project' + '.\n')
                                file.write('\n')
                                file.write(str(Description).strip() + '\n')
                                file.write('\n')
                                for i in range(len(Comments)):
                                    if str(Comments[i]).strip().endswith("."):
                                        file.write('; ' + str(Comments[i]).strip() + '\n')
                                    else:
                                        file.write('; ' + str(Comments[i]).strip() + '.\n')
                                        
                                file.write('\n')
                                file.write("; Sources\n".strip())
                                file.write('\n')
                                file.write('\n')
                                for i in range(len(urls)):
                                    file.write('; ' + str(urls[i]) + '\n')
                                file.write('\n')
                                file.write("; <------ Registry Edit ------>")
                                file.write('\n')
                                file.write('\n')
                                file.write(str(registry).strip())
                                
                                file.close()
                    
                        except UnicodeDecodeError:
                            pass
                
                else:
                    
                    try:
                        open(FILEPATH,'w', encoding="utf-16").close()
                        
                        with open(FILEPATH,'w', encoding="utf-16") as file:
                            file.write("Windows Registry Editor Version 5.00".strip())
                            file.write('\n')
                            file.write('\n')
                            file.write('; ' + str(read_metadata(FILEPATH)[2]).strip() + '\n')
                            file.write('; Created by Georgios Zachariadis on ' + str(read_metadata(FILEPATH)[1]).strip() + '\n')
                            file.write('; Modified on ' + str(read_metadata(FILEPATH)[0]).strip() + '\n')
                            file.write('; Categorized under ' + str(read_metadata(FILEPATH)[3]).strip() + '\n')
                            file.write('; File Encoding is ' + str(encoding['encoding']).strip() + '.\n')
                            file.write('; This file was automatically processed as part of the https://github.com/gzachariadis/Windows-10 Project' + '.\n')
                            file.write('\n')
                            file.write(str(Description).strip() + '\n')
                            file.write('\n')
                            file.write("; Sources\n".strip())
                            file.write('\n')
                            file.write('\n')
                            for i in range(len(urls)):
                                file.write('; ' + str(urls[i]) + '\n')
                            file.write('\n')
                            file.write("; <------ Registry Edit ------>")
                            file.write('\n')
                            file.write('\n')
                            file.write(str(registry).strip())
                            
                            file.close()
                        
                                
                    except UnicodeDecodeError:
                        pass
           else:
               print("File has already been Processed.")
               continue

print('Processed %d Files.' % (count))