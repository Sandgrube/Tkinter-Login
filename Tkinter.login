from tkinter import messagebox, Label, Button, FALSE, Tk, Entry

username = ("LOL")
password = ("123")


def try_login():
    print("Trying to login...")
    if username_guess.get() == username:
        messagebox.showinfo("-- Erfolgreich eingeloggt --", "Du bist jetzt eingeloggt.", icon="info")
    else:
        messagebox.showinfo("-- ERROR --", "Error, falsche anmeldeinformationen!", icon="warning")


window = Tk()
window.resizable(width=FALSE, height=FALSE)
window.title("Log-In")
window.geometry("200x150")


username_text = Label(window, text="Benutzername:")
username_guess = Entry(window)
password_text = Label(window, text="Passwort:")
password_guess = Entry(window, show="*")


attempt_login = Button(text="Einloggen", command=try_login)

username_text.pack()
username_guess.pack()
password_text.pack()
password_guess.pack()
attempt_login.pack()

window.mainloop()
