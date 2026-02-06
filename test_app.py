import pytest
from app import app


@pytest.fixture
def client():
    with app.test_client() as client:
        yield client


def test_hello(client):
    """Test the home route."""
    rv = client.get("/")
    assert b"Terraform & Docker CI is working!" in rv.data
