from setuptools import setup, find_packages

setup(
    name='useful',
    version='1',
    description='Very useful code',
    url='http://github.com/dummy_user/useful',
    author='Flying Circus',
    author_email='flyingcircus@example.com',
    license='MIT',
    packages=find_packages(),
    install_requires=['markdown'],
    # entry_points={'console_scripts': ['run = __main__:run']}
    entry_points={'console_scripts': ['run = src.__main__:run']}
)
