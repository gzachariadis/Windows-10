import os
import datetime
import platform
from pathlib import Path
import re
import codecs
from itertools import pairwise
import chardet
from Levenshtein import distance as lev

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

Words = ['Georgios','Categorized under','Sources','Modified on','Created on']

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
        return None
                
    except UnicodeDecodeError:
        pass

# Find the First Sentence in a Registry Tweak (if Any)
def fetch_registry_description(FILEPATH):
    
    Words.append(str(read_metadata(FILEPATH)[2]).strip())
    words_re = re.compile("|".join(Words))
    
    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            Lines = file.readlines()
            matches = []
            
            # For Each Line in File
            for line in Lines:
              
                # Until you Reach the Registry Tweak
                if '[-HKEY' not in line or '[HKEY' in line:
                
                    # Start with ; Have letters and finish with a Dot.
                    sentences = re.findall("^[;]{1}\s{0,}([A-Z][^\.!?]*[\.!?])$", line)
                    
                    # All Comments
                    non_sentences = re.findall("^\s{0,}[;]{1}\s{0,}([A-Z][^\.!?]*)$", line)
                    
                    if sentences != None:
                        for i in range(len(sentences)):
                            matches.append(sentences[i])
                    
                    if non_sentences != None:
                        for i in range(len(non_sentences)):
                            matches.append(non_sentences[i])
                
                else:
                    break
            
            # Search from Matches 
            if len(matches) > 0:
                for i in range(len(matches)):
                    # The first Match is the Description
                    if not words_re.search(str(matches[i])):
                        return matches[i]       
            else:
                return None 
            
    except UnicodeDecodeError:
        pass

# Find the First Sentence in a Registry Tweak (if Any)
def fetch_description_comments(FILEPATH,Description):
    
    Words.append(str(read_metadata(FILEPATH)[2]).strip())
    words_re = re.compile("|".join(Words))
    Description_Comments = []
    
    try :
        with open(FILEPATH,'r', encoding='utf-16-le') as file:
            Lines = file.readlines()
            matches = []
            
            # For Each Line in File
            for line in Lines:
              
                # Until you Reach the Registry Tweak
                if '[-HKEY' not in line or '[HKEY' in line:
                
                    # Start with ; Have letters and finish with a Dot.
                    sentences = re.findall("^[;]{1}\s{0,}([A-Z][^\!?]*)[.]{1,}$", line)
                    
                    # All Comments
                    non_sentences = re.findall("^\s{0,}[;]{1}\s{0,}([A-Z][^\.!?]*)$", line)
                    
                    if sentences != None:
                        for i in range(len(sentences)):
                            if sentences[i] not in matches:
                                matches.append(sentences[i])
                    
                    if non_sentences != None:
                        for i in range(len(non_sentences)):
                            if non_sentences[i] not in matches:
                                matches.append(non_sentences[i])
                
                else:
                    break
            
            # Search from Matches 
            if len(matches) > 0:
                
                for i in range(len(matches)):
                    # The first Match is the Description
                    if not words_re.search(str(matches[i])):
                        
                        
                        if issubclass(type(fetch_registry_description(FILEPATH)), str):
                            pattern = re.compile(str(fetch_registry_description(FILEPATH)).replace(';','').lower().strip())
                            match = re.search(pattern, str(matches[i].replace('\\n','')).lower().strip())
                            if match:
                                continue
                            
                        if issubclass(type(file_first_sentence(FILEPATH)), str):
                            pattern_2 = re.compile(str(file_first_sentence(FILEPATH)).replace(';','').lower().strip())
                            match_2 = re.search(pattern_2, str(matches[i].replace('\\n','')).lower().strip())                    
                            if match_2:
                                continue
   
                        if issubclass(type(Description), str):
                            
                            pattern_3 = re.compile(str(Description).replace(';','').lower().strip())
                            match_3 = re.search(pattern_3, str(matches[i].replace('\\n','')).lower().strip())     
                            
                            if match_3:
                                continue
                        
                        if fetch_registry_description(FILEPATH) == "" or file_first_sentence(FILEPATH) == "":
                            continue
                        
                        if int(lev(str(Description).replace(';','').lower().strip(), str(matches[i].replace('\\n','')).lower().strip())) > 2:
                            # Do not Allow Duplicate Comments
                            Description_Comments.append(str(matches[i].replace('\\n','')).strip())     
                
                if len(Description_Comments) > 0:
                    return Description_Comments
                else:
                    return None
                
            else:
                return None 
            
    except UnicodeDecodeError:
        pass

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
