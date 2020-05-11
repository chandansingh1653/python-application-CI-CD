from app import index_page

def test_index_page():
    assert index_page() == "This is index page"