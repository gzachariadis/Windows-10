import os
import datetime
import platform
from pathlib import Path
import re
import codecs
from itertools import pairwise
import chardet
import io
import np

# Function to Find Creation Date of a File
def creation_date(path_to_file):
    if platform.system() == 'Windows':
        return os.path.getctime(path_to_file)
    else:
        stat = os.stat(path_to_file)
        try:
            return stat.st_birthtime
        except AttributeError:
            # We're probably on Linux. No easy way to get creation dates here,
            # so we'll settle for when its content was last modified.
            return stat.st_mtime
        
# Search for All Registry Keys in the File and Return their File Lines
def identify_lines(FILEPATH):
    
    line_list = []
    with open(FILEPATH,'r', encoding='utf-16-le') as file:
        for l_no, line in enumerate(file.readlines(), start = 1):
            if str("[") in str(line.strip()):
                if l_no not in line_list:
                    line_list.append(l_no - 1)
        
        if l_no not in line_list:
            line_list.append(l_no + 1)
    
    # print(line_list)
    
    return line_list

# Find and Fix the Contents of the Registry Tweak
def find_registry_tweak(line_list,FILEPATH):

    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            
            content = file.readlines()
            file_contents = []
                
            try:
                res = list(pairwise(line_list))

                for i in range(len(list(res))):
                    a = res[i][0]
                    b = res[i][1]
                    registry = content [a : b]
                    
                    for i in range(len(registry)):
                        
                        if registry[i] not in ['\n', '\r\n']:
                            if str("[") in str(registry[i]).strip() or str("]") in str(registry[i]).strip():
                                registry[i] = str(registry[i].replace('\n', '')).strip()
                                registry[i] = str(registry[i].replace('\\\\', '\\')).strip()
                                file_contents.append(str(registry[i]))     
                            else:
                                file_contents.append(str(registry[i]))
                        
                registry = '\n'.join(file_contents).strip()      
                return registry
                                               
            except SyntaxError:
                return False    
                        
    except UnicodeDecodeError:
        print("DecodeError")
        
# Find all URLS in a File
def convert(lst):
    return ' '.join(lst)
 
def file_s(FILEPATH):
    
    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            Lines = file.readlines()
 
            # Get All Sentences
            for line in Lines:
                # Start with ; Have letters and finish with a Dot.
                sentences = re.search("^[;]{1}\s{0,}([A-Z][^\.!?]*[\.!?])$", line)
                if sentences:
                    if str(sentences[0]).strip() != "None":
                        return sentences[0]
                    else:
                        pass
                else:
                    pass
                
    except UnicodeDecodeError:
        pass

def detect_encoding(file):
    detector = chardet.universaldetector.UniversalDetector()
    with open(file, "rb") as f:
        for line in f:
            detector.feed(line)
            if detector.done:
                break
    detector.close()
    return detector.result
    
def read_metadata(FILEPATH):
    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            
            # Last Modification Date
            modification_time = datetime.datetime.fromtimestamp(os.path.getmtime(FILEPATH)).strftime('%d/%m/%Y')

            # File Creation Date 
            creation = datetime.datetime.fromtimestamp(creation_date(FILEPATH)).strftime('%d/%m/%Y')

            # Name of the File 
            file_name = Path(FILEPATH).resolve().stem

            # Parent Folder of the File
            folder = Path(FILEPATH).parent.name

            # Read the File and Get all the Links
            
            lines = file.read()
            test = convert(lines)
            urls = re.findall('http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*(),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+', lines)
                    
            return modification_time, creation, file_name, folder, urls

    except UnicodeDecodeError:
        pass
      
directory = 'C:/Users/Reverse/Music/Windows-10-Pro-N/Pre-Install/Registry-Files/Test_Folder'

def utf8_to_utf16(FILEPATH):
    head, tail = os.path.split(os.path.abspath(FILEPATH))
    try:
        with codecs.open(FILEPATH, 'r', encoding='utf-8', errors='ignore') as source:
            with open(head + '\\' + "utf16-{0}".format(tail), "wb") as dest:
                dest.write(source.read().encode("utf-16"))

        os.remove(FILEPATH)
        os.rename(str(head + '\\' + "utf16-{0}".format(tail)).strip(), str((head + '\\' + "{0}".format(tail))), src_dir_fd=None, dst_dir_fd=None)
        
        return str(head + '\\' + "{0}".format(tail)).strip()
            
                
    except FileNotFoundError:
        print("😰  That file doesn't seem to exist.")
   
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
            
           # Process the File
           lines = identify_lines(FILEPATH)
           registry = find_registry_tweak(lines,FILEPATH).strip() 
           urls = read_metadata(FILEPATH)[4]    
           Description = file_s(FILEPATH)
           
           if Description is None:
               
               print("Currently Processing : ", FILEPATH)
               
               Description = input("Give me a Registry Description: ")
               Description = '; ' + Description + '\n'
           
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