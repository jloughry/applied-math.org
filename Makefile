target = index.html

public_key = Joe_Loughry_public_key.pub

all: upload

upload: commit
	scp $(target) loughry@xray.he.net:public_html/

commit:
	git add *
	git commit
	git pull
	git push

vi:
	vi $(target)

