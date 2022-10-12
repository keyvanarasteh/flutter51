# Welcome to Git Tutorial!     
## Git e hoş geldiniz!

**Git** is an important part of daily programming **(especially if you're working with a team)** and is widely used in the software industry.
There are many various commands you can use, mastering Git takes time.  
But some commands are used more frequently (some daily).  
So in this episode, we will learn and check the most used Git commands that every developer should know.

**Git** sayesinde yapacağınız projelerin adım adım versiyonlarının kopyalarını alarak daha sonra ihtiyaç duyduğunuzda aldığınız  
kopyalara yani versiyonlara kolayca dönebiliyorsunuz.  
İlk sürümü Linux çekirdeği'nin geliştirilmesinde kullanılmak üzere 2005 yılında Linus Torvalds tarafından tasarlanıp geliştirilmiş.



## Download | İndir
https://git-scm.com/downloads

## Git Clone

Git clone is a command for ***downloading existing source code from a remote repository*** (like Github, for example).

Git clone ***mevcut kaynak kodunu uzak bir depodan indirmek*** için bir komuttur. (Github gibi yerlerden).


###### Command Usage | Komut kullanımı
	> git clone <repository-address>
	
## Git status

The **Git status** command ***gives us all the necessary information about the current branch.***

We can gather information like:  
- Whether the current branch is up to date  
- Whether there is anything to commit, push or pull  
- Whether there are files staged, unstaged or untracked  
- Whether there are files created, modified or deleted

**Git status** komutu, ***mevcut dal hakkında bize gerekli tüm bilgileri verir.***

Aşağıdaki gibi bilgileri toplayabiliriz:
- Mevcut şubenin güncel olup olmadığı
- Taahhüt edilecek, itilecek veya çekilecek bir şey olup olmadığı
- Aşamalı, aşamasız veya izlenmeyen dosyalar olup olmadığı
- Oluşturulan, değiştirilen veya silinen dosyalar olup olmadığı


###### Command Usage | Komut kullanımı
	> git status


## Git commit

This is maybe the most-used command of Git, ***Once we reach a certain point in development, we want to save our changes*** (maybe after a specific task or issue).  
Git commit is like setting a checkpoint in the development process which you can go back to later if needed.  
We also need to write a short message to explain what we have developed or changed in the source code.

Bu belki Git'in en çok kullanılan komutudur, ***Geliştirmede belirli bir noktaya ulaştığımızda, değişikliklerimizi kaydetmek istediğimizde bu komutu kullaniriz.*** (belki belirli bir görev veya sorundan sonra).
Git Commit, ***geliştirme sürecinde gerektiğinde daha sonra geri dönebileceğimiz bir kontrol noktası belirlemek gibidir.***
Ayrıca kaynak kodda ne geliştirdiğimizi veya değiştirdiğimizi anlatan kısa bir mesaj yazmamız gerekiyor.

###### Command Usage | Komut kullanımı
	> git commit -m "comment"

## Git push

After committing your changes, the next thing you want to do is send your changes to the remote server.  
Git push uploads your commits to the remote repository.

Değişikliklerimizi commit yaptiktan sonra yapmak istediğimiz sonraki şey, değişikliklerinizi uzakta olan sunucuya göndermektir. ***Git push, yaptığımiz commiti uzakta olan depoya yükler.***

###### Command Usage | Komut kullanımı
	> git push origin <branch>


## Git add

This _command_ updates the index using the current content found in the working tree, to prepare the content staged for the next commit.

Dosyaları dizine ekler ve commit’lemeye hazır hale gelirler. “Git add .” komutu mevcut dizindeki tüm dosyaları dizine ekler. “Git add dosya.txt” komutu mevcut dizindeki “dosya.txt” dosyasını dizine ekler.


###### Command Usage | Komut kullanımı
	> git add .
	
## Git pull
The git pull command is used to ***get updates from the remote repo.***  
This command is a combination of git fetch and git merge which means that, when we use git pull, it gets the updates from remote repository (git fetch) and immediately applies the latest changes in your local (git merge).

git pull komutu, ***uzak depodan güncellemeleri almak için kullanılır.***
Bu komut, git fetch ve git merge'nin bir birleşimidir; git pull kullandığımızda, güncellemeleri uzak depodan (git fetch) alır ve yerelinizdeki en son değişiklikleri hemen uygular (git birleştirme).

###### Command Usage | Komut kullanımı
	> git pull
	
## Git Revert

Sometimes we need to undo the changes that we've made, ***but we must carefully use these commands to avoid unwanted deletions.***

Bazen yaptığımız değişiklikleri geri almamız gerekir, ***ancak istenmeyen silmeleri önlemek için bu komutları dikkatli kullanmalıyız.***
###### Commits List Command | Commitleri Görüntüleme Komutu
	> git log --oneline
###### Command Usage | Komut kullanımı
	> git revert <commit-uuid>

## Git Branch
By using branches, ***several developers are able to work in parallel on the same project simultaneously.***
  
Dalları kullanarak, ***birkaç geliştirici aynı proje üzerinde aynı anda paralel olarak çalışabilir.***
###### Branch list command | Dallari Listeleme Komutu
	> git branch or git branch --list
	
###### add branch command | Dal Ekleme Komutu
	> git branch <branch-name>
	
This command will create a branch locally. To push the new branch into the remote repository, you need to use the following command:

Bu komut yerel olarak bir şube oluşturacaktır. Yeni dalı uzak depoya göndermek için aşağıdaki komutu kullanmanız gerekir:

###### push branch command | Eklenen şubeyi Depoya Gönderme Komutu
	> git push origin <branch-name>
	
###### delete branch command | Şubeyi Silme Komutu
	> git branch -d <branch-name>
	
## Git checkout

To work in a branch, first you need to switch to it.  
We use git checkout mostly for switching from one branch to another.  
We can also use it for checking out files and commits.

Bir branch"la çalışmak için önce o branch"a geçmeniz gerekir.
Git checkout'u çoğunlukla bir branch"dan diğerine geçmek için kullanırız.
Dosyaları ve commit"leri kontrol etmek için de kullanabiliriz.

###### checkout command | checkout Komutu
	> git checkout <branch-name>
-----
A shortcut command that allows you to create and switch to a branch at the same time:

aynı anda bir branch oluşturmanıza ve branch`a geçmenize izin veren bir kısayol komutu:
###### checkout command | checkout Komutu
	> git checkout -b <branch-name>
