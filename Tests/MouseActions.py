from SeleniumLibrary import SeleniumLibrary
from selenium.webdriver.common.action_chains import ActionChains

class MouseActions:
    def __init__(self):
        self.selib = SeleniumLibrary()

    def move_mouse_to_coordinates(self, x, y):
        driver = self.selib.driver
        actions = ActionChains(driver)
        actions.move_by_offset(x, y).perform()
        # Optional: Reset position to avoid offset stacking
        actions.move_by_offset(-x, -y).perform()
