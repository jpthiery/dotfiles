import os

import testinfra.utils.ansible_runner

testinfra_hosts = testinfra.utils.ansible_runner.AnsibleRunner(
    os.environ['MOLECULE_INVENTORY_FILE']).get_hosts('all')


def test_jpthiery_used_zsh_as_shell(host):
    jpthiery_shell = host.user("jpthiery").shell
    assert jpthiery_shell == "/bin/zsh"


def test_jpthiery_used_zsh(host):
    f = host.file('/home/jpthiery/.oh-my-zsh/oh-my-zsh.sh')
    assert f.exists
