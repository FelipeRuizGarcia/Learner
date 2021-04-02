Mock
Patch
Monkeypatch


# Pytest

#### Fixtures

pytests looks for the  `conftest.py` file in the file tree directory
you can use any fixture that are defined in a particular conftest.py throughout the files parent
directory and in any subdirectories. 



Pytest provides a monkeypatch fixture to replace values and behaviors at runtime and encapsulate it with local scope.


```
    @pytest.fixture(autouse=True)
    def disable_networks_call(monkeypatch):
        

#### Test Parametrization
#### Test Marks
