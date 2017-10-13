# Description
#   Intracts with OpenShift cli and fetch data.
#
# Configuration:
#   KUBECONFIG
#
# Commands:
#   oc status
#   oc project
#   oc get so on..
#
# Notes:
#   export KUBECONFIG with hubot startup
#
# Author:
#   Rohit Sharma <rohitrsh@gmail.com>


module.exports = (robot) ->

     robot.respond /oc status/i, (msg) ->
       @exec = require('child_process').exec
       command = "src/oc status"

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Ops! not able to fetch OpenShift cluster status, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "Here you go! the status of OpenShift Cluster." +"```" + stdout + "```"

     robot.respond /oc projects/i, (msg) ->
       @exec = require('child_process').exec
       command = "src/oc project"

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Ops! not able to fetch project list, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "Here you go! available projects ing OpenShift Cluster." +"```" + stdout + "```"

     robot.respond /oc get (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "src/oc get \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to get, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc describe (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "src/oc describe \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to describe, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc logs (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "src/oc logs \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to get the logs, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc get events/i, (msg) ->
       @exec = require('child_process').exec
       command = "oc get events"

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to get events, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc scale (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "oc scale \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to scale, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc expose (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "oc expose \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to expose, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc new-app (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "oc new-app \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to create new-app, there must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"

     robot.respond /oc start-build (.+)/i, (msg) ->
       usrIn = msg.match[1]
       @exec = require('child_process').exec
       command = "oc start-build \"#{usrIn}\""

       @exec command, { shell: '/bin/bash' } , (error, stdout, stderr) ->
         if error
            msg.send "@#{msg.message.user.name} " + "Unable to start-build, There must be an error with the syntax, Please check help `!oc help` " +"```" + stderr + "```"
         else
            msg.send "@#{msg.message.user.name} " + "This what is have got for you!" +"```" + stdout + "```"
