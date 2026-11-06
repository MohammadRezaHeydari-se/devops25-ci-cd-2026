import pytest

from app.service import add, divide


def test_add():
    assert add(2, 3) == 5


def test_divide():
    assert divide(10, 2) == 5


def test_divide_by_zero():
    with pytest.raises(ValueError):
        divide(10, 0)


@pytest.mark.parametrize(
    "a, b, expected",
    [
        (-10, 2, -5),
        (10, -2, -5),
        (-10, -2, 5),
    ],
)
def test_divide_preserves_sign(a, b, expected):
    """Division must preserve the correct result sign."""
    assert divide(a, b) == expected
