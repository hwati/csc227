# -*- coding: utf-8 -*-
"""
Created on Tue Nov 29 12:42:36 2022

@author: Hagar
"""

from flask import Flask, render_template, request
flask_test=Flask(__name__)



""" this Function render the home page"""
@flask_test.route("/", methods=["GET","POST"])
def home():
    
    if request.method =="POST":
            name=request.form.get("name")
            size= float(request.form.get("size"))
            crema=request.form.get("crema")
            quantity= int(request.form.get("quantity"))
            #check the cake size
            if size == "8":
                sizeValue=8
            elif size == "10":
                sizeValue=10
            else:
                sizeValue= 16
                        
            #Calculate Total 
            price= (sizeValue * quantity)
            total=price+(price*0.06)
            return render_template("Yourorder.html").format(name=name,size=size,quantity=quantity,total=total,crema=crema)
        
    else:    
        
            return render_template("home.html")
                           
                           
if __name__ =="__main__" :
    
        flask_test.run(host='0.0.0.0', port=8080)
