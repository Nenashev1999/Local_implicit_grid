import unittest
from resample_geometry import normalize_mesh, sample_mesh, main
from unittest.mock import patch, Mock

class TestReconstruct(unittest.TestCase):
    def test_main(self):
        self.assertRaises(TypeError, main, -2)
        self.assertRaises(TypeError, main, "skoltech")
    
    def test_normalize_mesh(self):
        self.assertRaises(TypeError, normalize_mesh, 1)
        self.assertRaises(TypeError, normalize_mesh, "skoltech")
    
    def test_sample_mesh(self):
        self.assertRaises(TypeError, sample_mesh, 1)
        self.assertRaises(TypeError, sample_mesh, 'kek')
