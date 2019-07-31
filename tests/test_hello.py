import requests
import unittest

class Test(unittest.TestCase):
    def test_status_code(self):
      status_code = requests.get('http://hello').status_code
      self.assertAlmostEqual(status_code, 200)
