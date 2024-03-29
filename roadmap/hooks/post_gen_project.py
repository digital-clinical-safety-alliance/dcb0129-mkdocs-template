import os

REMOVE_PATHS = [
    '{% if cookiecutter.business_continuity.lower() != "y" %} business-continuity.md {% endif %}',
    '{% if cookiecutter.medical_device.lower() != "y" %} medical-device.md {% endif %}',
]

for path in REMOVE_PATHS:
    path = path.strip()
    if path and os.path.exists(path):
        if os.path.isdir(path):
            os.rmdir(path)
        else:
            os.unlink(path)
