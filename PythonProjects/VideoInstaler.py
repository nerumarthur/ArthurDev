from pytube import YouTube,Playlist
from pyfiglet import Figlet
import os

from pytube.exceptions import RegexMatchError

def baixarvideo(url):
    try:
        video = YouTube(url)
        print("[ {} ]".format(video.title.upper()))
        print("Download Começando")
        video.streams.get_highest_resolution().download()
        print("Download Completo")
    except RegexMatchError:
        print("Link Inválido")
def baixarPlaylist(url):
    try:
        Playlist = Playlist(url)
        print("[ {} ]".format(Playlist.title.upper()))
        print("Download Começando")
        Playlist.streams.get_highest_resolution().download()
        print("Download Completo")
    except RegexMatchError:
        print("Link Inválido")

def selecionaOpcao():
    print("[1] Baixar Video(MP4)\n[2] Baixar Playlist\n[3] Sair")
    escolha = int(input(">  "))

    if escolha == 3:
        return False
    else:
        print("")
        URL = str(input("URL:"))

        print("")
        if escolha == 1:
            baixarvideo(URL)
        elif escolha == 2:
            baixarPlaylist(URL)
        else: 
            print("Comando Inválido")
    return True
def main():
    loop = True
    custom_fig = Figlet(font='small')
    while loop:
        print(custom_fig.renderText('PyTube'))
        loop = selecionaOpcao()
        if loop:
            print("\n")
            os.system("pause") or None
            os.system('cls') or None
if __name__ == '__main__':
    main()

