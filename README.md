FileManager.sh


📌 Overview

. This project is a Linux shell script (FileManager.sh) used to manage files and directories.

⚙️ Features

🔹 Directory Operations

. Create a directory

. Delete a directory

. List contents of a directory

. List only files

. List only directories

. List all (files + directories)

🔹 File Operations

. Create a file

. Add content to a file

. Add content at the beginning of a file

. Show first n lines of a file

. Show last n lines of a file

. Show content of a specific line

. Show content of a line range

. Move or rename a file

. Copy a file

. Clear file content

. Delete a file


📂 Example Commands

Directory

> ./FileManager.sh addDir /tmp dir1

> ./FileManager.sh listFiles /tmp

> ./FileManager.sh listDirs /tmp

> ./FileManager.sh listAll /tmp

> ./FileManager.sh deleteDir /tmp dir1

File

> ./FileManager.sh addFile /tmp file1.txt

> ./FileManager.sh addContentToFile /tmp file1.txt "Hello"

> ./FileManager.sh showFileBeginingContent /tmp file1.txt 5

> ./FileManager.sh showFileEndContent /tmp file1.txt 5

> ./FileManager.sh moveFile /tmp/file1.txt /tmp/file2.txt

> ./FileManager.sh copyFile /tmp/file2.txt /tmp/

> ./FileManager.sh deleteFile /tmp file2.txt
