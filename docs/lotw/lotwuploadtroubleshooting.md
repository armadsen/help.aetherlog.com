## Troubleshooting Uploads to the LoTW Website

Another frequent question from Aether users is something like: "I synchronized my log with LoTW and Aether said the upload was successful, but I don't see anything on the LoTW website. What's wrong?".

Generally, this doesn't indicate an error at all. When the LoTW server receives an uploaded log, it does not process the log immediately. Rather, it puts it into a queue to be processed at some point in the future. The amount of time the log sits in the queue before being processed is heavily dependent on how busy the server is. During normal, low-traffic periods, the delay is as short as as a few minutes. However, occasionally, after a big contest weekend for example, LoTW queue wait times can be _much_ longer, up to a day or two.

When Aether uploads a log to the LoTW server, the server sends back an acknowledgment telling Aether that the log was received and was put into the processing queue. Aether presents a message indicating a successful upload only if this acknowledgment is successfully received. If the LoTW server instead returns an error, Aether puts up an error message to let the user know that the upload failed. So, if you see a message from Aether indicating that an LoTW upload succeeded, you can be confident that your log is in the queue and will be processed by the LoTW server, even though it doesn't show up on the website immediately.

As always, if you have a problem that isn't fixed by the suggestions here, or have further questions, please feel free to contact [Aether support](https://www.aetherlog.com/contact.html).
