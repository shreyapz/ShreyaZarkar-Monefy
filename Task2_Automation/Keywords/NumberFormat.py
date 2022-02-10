from robot.libraries.BuiltIn import BuiltIn
from datetime import date
from babel.dates import format_date
import locale

def get_current_driver():
    return BuiltIn().get_library_instance('AppiumLibrary')._current_application()


def test_number(num1,num2):
    locale.setlocale(locale.LC_ALL, 'de_DE')
    pythonnumber1 = locale.atof(num1)
    sum=pythonnumber1+num2
    return sum

def format_number_eng():
    locale.setlocale(locale.LC_ALL, 'en_US.UTF-8')
    pythonnumber1 = locale.atof(9.99)
    print(pythonnumber1)

def convert_str_to_float(num1):
    f=float(num1)
    result = "{:.2f}".format(f)
    return  (result)


def convert_float_to_string(num1):
     f1= "{:.2f}".format(num1)
     result = str(f1)
     return  (result)