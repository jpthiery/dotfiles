#
#
#
ANSIBLE_WDIR:=ansible/
ROLES_PATH:=ansible/roles/

$(ANSIBLE_WDIR)venv :
	@cd $(ANSIBLE_WDIR) && \
	 	virtualenv -p python2 venv
	@cd $(ANSIBLE_WDIR) && \
    	source venv/bin/activate && \
    	pip install -r requirements.txt


$(ROLES_PATH)$(role):
	$(error $(ROLES_PATH)$(role) must exist to use it)

.PHONY : test
test : $(ANSIBLE_WDIR)venv $(ROLES_PATH)$(role)
ifndef role
$(error role must be defined)
endif
	@source $(ANSIBLE_WDIR)venv/bin/activate && \
		cd $(ROLES_PATH)$(role) && \
		molecule test
