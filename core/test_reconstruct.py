import unittest
from reconstruct_geometry import main
from unittest.mock import patch, Mock

class TestReconstruct(unittest.TestCase):
    def test_main(self):
        self.assertRaises(TypeError, main, -2)
        self.assertRaises(TypeError, main, "skoltech")

