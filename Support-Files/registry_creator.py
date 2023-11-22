import os

import datetime

import platform

from pathlib import Path

import re

import codecs

from itertools import pairwise

import chardet

from support_functions import *


# Directory to Run 

directory = r"C:/Users/Reverse/Music/Windows 10/Pre-Install/Registry-Files/Test_Folder"


# Count the File this Script Has Processed at Current Run

count = 0 


# For Each File in Directory

for filename in os.listdir(directory):
    

    # Get File

    f = os.path.join(directory, filename)
    

    # Setting Filepath

    # Fixes the Filepath for Processing

    FILEPATH = f.replace('\\', '/')
 

    # Check if File exists 

    if check_reg_file_exists(FILEPATH) is True:   
       

        # Check Encoding

        if check_file_encoding(FILEPATH) is False:       
            

            # Detect File Encoding  

            #? Not Necessary Now, needs fix

            encoding = detect_encoding(FILEPATH)
            

            # Turn File from UTF-8 to UTF-16

            # TODO: Untested

            utf8_to_utf16(FILEPATH)
            

        else:
            

           # If File Does not Contain Github URL (So isn't Processed)

           if check_file_for_string(FILEPATH) is False:
                

                # Do the Processing

                lines = identify_lines(FILEPATH)

                registry = find_registry_tweak(lines,FILEPATH).strip() 

                urls = read_metaData(FILEPATH)[4]    

                Description = fetch_registry_description(FILEPATH)
                

                # No Description Identified - Give One Manually

                if Description is None:
                    

                    # Ask user for Description

                    print("Currently Processing ---> ", os.path.splitext(os.path.basename(FILEPATH))[0])

                    Description = input("Give me a Registry Description: ")

                    Description = '; ' + Description + '\n'                     
                

                else:   
                           

                    Description = '; ' + str(fetch_registry_description(FILEPATH).strip()) + '.\n'
                

                # Fetch Comments from Registry File (if Any)

                Comments = fetch_description_comments(FILEPATH,Description)
                

                # if there are Comments

                if isinstance(Comments, list):

                    if len(Comments) > 0:

                        try:

                            open(FILEPATH,'w', encoding="utf-16").close()
                            

                            with open(FILEPATH,'w', encoding="utf-16") as file:

                                file.write("Windows Registry Editor Version 5.00".strip())

                                file.write('\n')

                                file.write('\n')

                                file.write('; ' + str(read_metaData(FILEPATH)[2]).strip() + '\n')

                                file.write('; Created by Georgios Zachariadis on ' + str(read_metaData(FILEPATH)[1]).strip() + '\n')

                                file.write('; Modified on ' + str(read_metaData(FILEPATH)[0]).strip() + '\n')

                                file.write('; Categorized under ' + str(read_metaData(FILEPATH)[3]).strip() + '\n')

                                file.write('; File Encoding is ' + str(fetch_file_encoding(FILEPATH)).strip() + '.\n')

                                file.write('; This file was automatically processed as part of the https://github.com/gzachariadis/Windows-10 Project' + '.\n')

                                file.write('\n')
                                

                                if str(Description).endswith("."):

                                    file.write(str(Description).strip() + '\n')

                                    file.write('\n')

                                else:

                                    file.write(str(Description).strip() + '.\n')

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
                                

                                count = count + 1
                                

                        except UnicodeDecodeError:
                            pass
                

                # if there are no Comments

                else:
                    

                    try:

                        open(FILEPATH,'w', encoding="utf-16").close()
                        

                        with open(FILEPATH,'w', encoding="utf-16") as file:

                            file.write("Windows Registry Editor Version 5.00".strip())

                            file.write('\n')

                            file.write('\n')

                            file.write('; ' + str(read_metaData(FILEPATH)[2]).strip() + '\n')

                            file.write('; Created by Georgios Zachariadis on ' + str(read_metaData(FILEPATH)[1]).strip() + '\n')

                            file.write('; Modified on ' + str(read_metaData(FILEPATH)[0]).strip() + '\n')

                            file.write('; Categorized under ' + str(read_metaData(FILEPATH)[3]).strip() + '\n')

                            file.write('; File Encoding is ' + str(fetch_file_encoding(FILEPATH)).strip() + '.\n')

                            file.write('; This file was automatically processed as part of the https://github.com/gzachariadis/Windows-10 Project' + '.\n')

                            file.write('\n')

                            if str(Description).endswith("."):

                                file.write(str(Description).strip() + '\n')

                                file.write('\n')

                            else:

                                file.write(str(Description).strip() + '.\n')

                                file.write('\n')

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
                        

                            count = count + 1
                                

                    except UnicodeDecodeError:
                        pass

           else:

               continue


print('Processed %d Files.' % (count))