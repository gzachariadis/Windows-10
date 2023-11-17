import os
import datetime
import platform
from pathlib import Path
import re
import codecs
from itertools import pairwise
import chardet

# Find Creation Date of a File (Windows Specific)
def creation_date(path_to_file):
    if platform.system() == 'Windows':
        return os.path.getctime(path_to_file)
    else:
        stat = os.stat(path_to_file)
        try:
            return stat.st_birthtime
        except AttributeError:
            # We're probably on Linux. No easy way to get creation dates here.
            return None
             
# Search for All Registry Keys in the File and Return their File Lines
# Check if a line starts with "[" and fetches the file Line Number -1
# So if "[" is found in line 12 it will return 11
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
# Opens the file and gets the Registry Tweak by getting all the lines between the two previously identified lines
# So it takes everything before the "[" (start of registry tweak) and everything before the next tweak starts.abs
# This assumes no Comments between the registry tweaks.

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
        
# Convert a list to a Sentence (supportive-function)
def convert(lst):
    return ' '.join(lst)
 
# Find the First Sentence in a Registry Tweak (if Any)
def file_first_sentence(FILEPATH):
    
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


# Find the First Sentence in a Registry Tweak (if Any)
def file_comments(FILEPATH):
    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            Lines = file.readlines()
            matches = []
            # Get All Sentences
            for line in Lines:
                # Start with ; Have letters and finish with a Dot.
                sentences = re.findall("^[;]{1}\s{0,}([A-Z][^\.!?]*[\.!?])$", line)
                non_sentences = re.findall("^[;]{1}\s{0,}[A-Za-z\s]*$", line)
                if sentences != None:
                    for i in range(len(sentences)):
                        matches.append(sentences[i])
                if non_sentences != None:
                    for i in range(len(non_sentences)):
                        matches.append(non_sentences[i])
            
            if len(matches) > 0:
                return matches
            else:
                return None 
            
    except UnicodeDecodeError:
        pass


def fetch_registry_description(FILEPATH):
    with open(FILEPATH,'r', encoding='utf-16-le') as file:
        Lines = file.readlines()
        Description = re.sub("[;.]","",str(Lines[9]))
        
        return Description    

# Detect a File's Encoding
def detect_encoding(file):
    detector = chardet.universaldetector.UniversalDetector()
    with open(file, "rb") as f:
        for line in f:
            detector.feed(line)
            if detector.done:
                break
    detector.close()
    return detector.result

# Read Metadata of a File to Determine Information
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

            # Read the File 
            lines = file.read()
            # Convert it all to a Giant String
            test = convert(lines)
            
            # Fetch all the Links
            urls = re.findall('http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*(),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+', lines)
                    
            return modification_time, creation, file_name, folder, urls

    except UnicodeDecodeError:
        pass

# Check Each File for the Github Link of the Project to Ensure No-Reprocessing of Files. 
def check_file_for_string(FILEPATH):
    with open(FILEPATH,'r', encoding='utf-16-le') as file:
       Lines = file.read()
       sentences = re.search("https://github.com/gzachariadis/Windows-10", Lines)
       if sentences is not None:
           return True
    return False

# Convert a UTF-8 Formatting File to UTF-16 for Processing
# UTF-16 Files are Only Acceptable as Registry Files under Windows 10
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
        print("That file doesn't seem to exist.")
