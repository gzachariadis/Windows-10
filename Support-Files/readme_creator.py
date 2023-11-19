from support_functions import *

import json
from mdutils.mdutils import MdUtils
from mdutils import Html
from mdutils.tools.Table import Table

# Registry Files Parent Directory
Parent_Directory = r"C:/Users/Reverse/Music\Windows 10/Pre-Install/Registry-Files"

# Dictionary to Store all Files under Each Subdirectory 
# Key = Subdirectory (str)
# Values = All Registry Files inside of it (list)
Folder_Files = {}


# For Each Subdirectory under the Parent Directory (Registry-Files)
for Subdirectory in get_immediate_subdirectories(Parent_Directory):
    # For Each File on Each Subdirectory 
    for Each_File in os.listdir(str(Parent_Directory) + '/' + str(Subdirectory)):
        
        # Get File Path
        if check_reg_file_exists(os.path.join(Parent_Directory + '/' + Subdirectory + '/' + Each_File)) is True:
            try:
                Folder_Files[str(Subdirectory).strip()].append(str(Each_File).strip())
            except KeyError:
                Folder_Files[str(Subdirectory).strip()] = [str(Each_File).strip()]
        
    
# print(json.dumps(Folder_Files, sort_keys=True, indent=4))


for Directory in Folder_Files.keys():
    for File in Folder_Files[Directory]:
        Filepath = os.path.join(Parent_Directory + '/' + Directory + '/' + File)
        if check_reg_file_exists(Filepath) is True:
            if check_correct_reg_file_encoding(Filepath) is True:
                
                # Fetch Registry Description  
                Description = fetch_registry_description(Filepath)
                
                # Get Parent Folder
                Folder = re.sub(r"\s+", '%20', str(read_metadata(Filepath)[3]).strip())
                
                # Get File Name
                File = re.sub(r"\s+", '%20', str(read_metadata(Filepath)[2]).strip())
                
           
                # Checking if it is a file
                if os.path.isfile(os.path.join(Parent_Directory + '/' + Directory + '/README.md')):
                    
                    README = open(os.path.join(Parent_Directory + '/' + Directory + '/README.md'), "a")
                    
                    README.write('\n\n')
                    README.write(('- [' + str(read_metadata(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()))
                    
                    README.close()
                    
                    ('* [' + str(read_metadata(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 
                
                else:
                    
                    Markdown = MdUtils(file_name='README.md')
                    Markdown.write('<h1 align="center" >{}</h1>\n\n'.format(str(Directory).strip()))
                    Markdown.new_line('\n<br>\n')
                    Markdown.new_line('<h3>{}</h3>\n'.format(str('Registry Tweaks')))
                    Markdown.new_line('\n<br>\n')
                    Markdown.new_line(('- [' + str(read_metadata(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()))
                    
                    os.chdir(os.path.join(Parent_Directory + '/' + Directory))
                    Markdown.create_md_file()
                    
                 
                
                # Create a Markdown Link
                # print('* [' + str(read_metadata(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 

    
"""
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
            
            # Create a Markdown Link
            # print('* [' + str(read_metadata(FILEPATH)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 
"""