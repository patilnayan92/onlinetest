import os
import sys

path = '/home/patilnayan092/etonline'
if path not in sys.path:
    sys.path.append(path)

os.environ['DJANGO_SETTING_MODULE'] = 'etonline.settings'

from django.core.wsgi import get_wsgi_application
from django_contrib.staticfiles.handlers import StaticFilesHandler
application = StaticFilesHandler(get_wsgi_application())
