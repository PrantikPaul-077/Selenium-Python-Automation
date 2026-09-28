from robot.api import logger
from robot.libraries.BuiltIn import BuiltIn

ROBOT_LISTENER_API_VERSION = 3

def end_test(data, result):
    if result.status == "FAIL":
        try:
            selenium = BuiltIn().get_library_instance("SeleniumLibrary")
            selenium.capture_page_screenshot(filename=f"failure_{result.name}.png")
            logger.info("Failure screenshot captured.")
        except Exception as exc:
            logger.warn(f"Could not capture failure screenshot: {exc}")
