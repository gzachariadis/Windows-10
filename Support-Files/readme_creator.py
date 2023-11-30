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


#? What happens if you have Subdirectories? Find a Solution.

for Directory in Folder_Files.keys():

    for File in Folder_Files[Directory]:

        Filepath = os.path.join(Parent_Directory + '/' + Directory + '/' + File)

        if check_reg_file_exists(Filepath) is True:

            if check_file_encoding(Filepath) is False:
                

                # if File has the Wrong Encoding, then Turn it to UTF-16

                utf8_to_utf16(Filepath)
            

            else:
                

                # Fetch Registry Description  

                Description = fetch_registry_description(Filepath)
                

                # Get Parent Folder

                Folder = re.sub(r"\s+", '%20', str(read_metaData(Filepath)[3]).strip())
                

                # Get File Name

                File = re.sub(r"\s+", '%20', str(read_metaData(Filepath)[2]).strip())
                

                # Checking if it is a file

                if os.path.isfile(os.path.join(Parent_Directory + '/' + Directory + '/README.md')):
     

                    # Tweak to Write in the File

                    Tweak = ('- [' + str(read_metaData(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 
                

                    # Read the File

                    Check = open(os.path.join(Parent_Directory + '/' + Directory + '/README.md'), "r")

                    Lines = Check.readlines()

                    is_tweak_there = False
                    

                    # if Tweak in File, then don't add it.

                    for line in Lines:

                        if str(line).strip() == str(Tweak):

                            is_tweak_there = True

                            break
                    

                    # Close the File

                    Check.close()
                    

                    # if Tweak is not in File, then add it.

                    if is_tweak_there == False:
                        

                        README = open(os.path.join(Parent_Directory + '/' + Directory + '/README.md'), "a")

                        README.write('\n\n')

                        README.write(Tweak)

                        README.close()
                          

                else:

                    # Create the Markdown File

                    #! Find a Way to Start Writing from Line 1

                    Markdown = MdUtils(file_name='README.md')

                    Markdown.write('<h1 align="center" >{}</h1>\n\n'.format(str(Directory).strip()))

                    Markdown.new_line('\n<br>\n')

                    Markdown.new_line('<h3>{}</h3>\n'.format(str('Registry Tweaks')))

                    Markdown.new_line('\n<br>\n')

                    Markdown.new_line(('- [' + str(read_metaData(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()))
                    

                    # Save it Under the Correct Directory

                    os.chdir(os.path.join(Parent_Directory + '/' + Directory))

                    Markdown.create_md_file()
                    

                # Create a Markdown Link

                # print('* [' + str(read_metadata(Filepath)[2]).strip() + '](https://github.com/gzachariadis/Windows-10/blob/main/Pre-Install/Registry-Files/' + str(Folder).strip() + '/' + str(File).strip() + '.reg) - ' + str(Description).strip()) 
                