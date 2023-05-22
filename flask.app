{
 "cells": [
  {
   "cell_type": "code",
   "execution_count": 1,
   "id": "c5b4730c",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Collecting virtualenv\n",
      "  Downloading virtualenv-20.23.0-py3-none-any.whl (3.3 MB)\n",
      "     ---------------------------------------- 3.3/3.3 MB 17.3 MB/s eta 0:00:00\n",
      "Collecting filelock<4,>=3.11\n",
      "  Downloading filelock-3.12.0-py3-none-any.whl (10 kB)\n",
      "Collecting distlib<1,>=0.3.6\n",
      "  Downloading distlib-0.3.6-py2.py3-none-any.whl (468 kB)\n",
      "     ------------------------------------- 468.5/468.5 kB 28.6 MB/s eta 0:00:00\n",
      "Collecting platformdirs<4,>=3.2\n",
      "  Downloading platformdirs-3.5.1-py3-none-any.whl (15 kB)\n",
      "Installing collected packages: distlib, platformdirs, filelock, virtualenv\n",
      "  Attempting uninstall: platformdirs\n",
      "    Found existing installation: platformdirs 2.5.2\n",
      "    Uninstalling platformdirs-2.5.2:\n",
      "      Successfully uninstalled platformdirs-2.5.2\n",
      "  Attempting uninstall: filelock\n",
      "    Found existing installation: filelock 3.6.0\n",
      "    Uninstalling filelock-3.6.0:\n",
      "      Successfully uninstalled filelock-3.6.0\n",
      "Successfully installed distlib-0.3.6 filelock-3.12.0 platformdirs-3.5.1 virtualenv-20.23.0\n",
      "Note: you may need to restart the kernel to use updated packages.\n"
     ]
    }
   ],
   "source": [
    "pip install virtualenv"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 4,
   "id": "8fd0a731",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      "Requirement already satisfied: Flask in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (1.1.2)\n",
      "Requirement already satisfied: Jinja2>=2.10.1 in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from Flask) (2.11.3)\n",
      "Requirement already satisfied: itsdangerous>=0.24 in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from Flask) (2.0.1)\n",
      "Requirement already satisfied: click>=5.1 in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from Flask) (8.0.4)\n",
      "Requirement already satisfied: Werkzeug>=0.15 in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from Flask) (2.0.3)\n",
      "Requirement already satisfied: colorama in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from click>=5.1->Flask) (0.4.5)\n",
      "Requirement already satisfied: MarkupSafe>=0.23 in c:\\users\\sweta.laljee\\anaconda3\\lib\\site-packages (from Jinja2>=2.10.1->Flask) (2.0.1)\n",
      "Note: you may need to restart the kernel to use updated packages.\n"
     ]
    }
   ],
   "source": [
    "pip install Flask"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 5,
   "id": "b26e4845",
   "metadata": {},
   "outputs": [],
   "source": [
    "from flask import Flask"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 6,
   "id": "4ae954f5",
   "metadata": {},
   "outputs": [],
   "source": [
    "app = Flask(__name__)"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": 8,
   "id": "b2e498d7",
   "metadata": {},
   "outputs": [
    {
     "name": "stdout",
     "output_type": "stream",
     "text": [
      " * Serving Flask app \"__main__\" (lazy loading)\n",
      " * Environment: production\n",
      "\u001b[31m   WARNING: This is a development server. Do not use it in a production deployment.\u001b[0m\n",
      "\u001b[2m   Use a production WSGI server instead.\u001b[0m\n",
      " * Debug mode: off\n"
     ]
    },
    {
     "name": "stderr",
     "output_type": "stream",
     "text": [
      " * Running on http://127.0.0.1:5000/ (Press CTRL+C to quit)\n",
      "127.0.0.1 - - [22/May/2023 12:06:19] \"GET / HTTP/1.1\" 200 -\n",
      "127.0.0.1 - - [22/May/2023 12:06:19] \"GET /favicon.ico HTTP/1.1\" 404 -\n",
      "127.0.0.1 - - [22/May/2023 13:52:10] \"GET / HTTP/1.1\" 200 -\n"
     ]
    }
   ],
   "source": [
    "@app.route('/')\n",
    "def hello_world():\n",
    "    return 'Hello World'\n",
    " \n",
    "# main driver function\n",
    "if __name__ == '__main__':\n",
    "    # on the local development server.\n",
    "    app.run()"
   ]
  },
  {
   "cell_type": "code",
   "execution_count": null,
   "id": "bb72b56b",
   "metadata": {},
   "outputs": [],
   "source": []
  }
 ],
 "metadata": {
  "kernelspec": {
   "display_name": "Python 3 (ipykernel)",
   "language": "python",
   "name": "python3"
  },
  "language_info": {
   "codemirror_mode": {
    "name": "ipython",
    "version": 3
   },
   "file_extension": ".py",
   "mimetype": "text/x-python",
   "name": "python",
   "nbconvert_exporter": "python",
   "pygments_lexer": "ipython3",
   "version": "3.9.13"
  }
 },
 "nbformat": 4,
 "nbformat_minor": 5
}
