from tkinter import *
from tkinter import scrolledtext


window = Tk()

window.title("Carmel Deployment")
lbl = Label(window, text="Welcome to Carmel Deployment", font=("Arial", 10))
lbl.place(relx=0.5, rely=0.02, anchor=N)

verLbl = Label(window, text="Version: ")#, font=("Arial", 10)
verLbl.place(relx=0.05, rely=0.1)
verTxt = Entry(window, width=10)
verTxt.place(relx=0.25, rely=0.1)
# --deleteDeployFolder false --version 1.0.4 --mail false --msg "added debug enviroment, and fixed camera config file"

delDeploy_chk_state = BooleanVar()
delDeploy_chk_state.set(True)  # set check state
chk = Checkbutton(window, text='Delete deploy folder when process finishes', var=delDeploy_chk_state)
chk.place(relx=0.05, rely=0.16)



gil_chk_state = BooleanVar()
gil_chk_state.set(True)  # set check state
chk = Checkbutton(window, text='Gil Baruch', var=gil_chk_state)
chk.place(relx=0.12, rely=0.27)

tom_chk_state = BooleanVar()
tom_chk_state.set(True)  # set check state
chk = Checkbutton(window, text='Tom Dayan', var=tom_chk_state)
chk.place(relx=0.12, rely=0.32)

mail_chk_state = BooleanVar()
mail_chk_state.set(True)  # set check state
chk = Checkbutton(window, text='Send mail', var=mail_chk_state)
chk.place(relx=0.05, rely=0.22)

outputTxt = scrolledtext.ScrolledText(window,width=29,height=12)
outputTxt.place(relx=0.05, rely=0.37)


btn = Button(window, text="Start Deploying")
btn.place(relx=0.5, rely=0.9, anchor=N)
window.geometry('350x500')



window.mainloop()