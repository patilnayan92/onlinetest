import os
import sys

path = '/home/patilnayan092/etonlinetest'
if path not in sys.path:
    sys.path.append(path)

os.environ['DJANGO_SETTING_MODULE'] = 'etonlinetest.settings'

from django.core.wsgi import get_wsgi_application
application = get_wsgi_application()

import django.core.handlers.wsgi
application = get_wsgi_application()
