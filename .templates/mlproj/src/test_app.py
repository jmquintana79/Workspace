# @Author: juan
# @Date:   2019-01-07T18:00:35+09:00
# @Last modified by:   juan
# @Last modified time: 2019-01-08T11:41:45+09:00

import pytest


@pytest.fixture
def app():
    import app
    return app.app
