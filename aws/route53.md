### Pro Tips

the cheapest domain to register are `.CLICK`... for $3 USD
https://aws.amazon.com/es/route53/pricing/#Domain_Names


----


####  What are the prerequisites for updating my name servers at the Route 53 registrar?
https://aws.amazon.com/premiumsupport/knowledge-center/route-53-update-name-servers-registrar/


https://docs.aws.amazon.com/Route53/latest/DeveloperGuide/domain-name-servers-glue-records.html#domain-name-servers-glue-records-adding-changing


----

###  How do I remove the "clientTransferProhibited" status from my Route 53 domain?
https://aws.amazon.com/premiumsupport/knowledge-center/route-53-fix-clienttransferprohibited/


### miscellaneous

The Alias records take (long) time to be propagated:
So, you can switch those to "manual" records once you create the alias record.

This "helps" to more quickly dns propagation.


----


#### Route 53 doesn't allow adding DKIM keys because length is too long
https://serverfault.com/questions/763815/route-53-doesnt-allow-adding-dkim-keys-because-length-is-too-long

You can simply select 1024 instead of 2048 and add this to route 53 at the time of generating the TXT in Google Apps



#### https://aws.amazon.com/premiumsupport/knowledge-center/route53-resolve-dkim-text-record-error/


#### What DKIM, SPF and DMARC stand for? 
https://help.lemlist.com/en/articles/5186817-how-to-set-up-your-dkim-spf-and-dmarc


https://apps.google.com/supportwidget/articlehome?hl=en&article_url=https%3A%2F%2Fsupport.google.com%2Fa%2Fanswer%2F2466563%3Fhl%3Den&product_context=2466563&product_name=UnuFlow&trigger_context=a

https://apps.google.com/supportwidget/articlehome?hl=en&article_url=https%3A%2F%2Fsupport.google.com%2Fa%2Fanswer%2F10684623%3Fhl%3Den&product_context=10684623&product_name=UnuFlow&trigger_context=a


