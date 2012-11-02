from travis import irange
from unittest import TestCase


class TravisTests(TestCase):
    def test_irange(self):
        self.assertEqual(list(irange(10)), [i for i in range(0, 11)])
