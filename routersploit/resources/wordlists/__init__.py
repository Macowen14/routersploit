from pathlib import Path

_DIR = Path(__file__).resolve().parent

defaults = 'file://' + str(_DIR / 'defaults.txt')
passwords = 'file://' + str(_DIR / 'passwords.txt')
usernames = 'file://' + str(_DIR / 'usernames.txt')
snmp = 'file://' + str(_DIR / 'snmp.txt')
