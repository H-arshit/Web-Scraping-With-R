var page = require('webpage').create();
                   page.open('http://web.archive.org/web/20110831155858/http://aws.amazon.com/ec2/pricing' , function(){
                    console.log(page.content);
                    phantom.exit();
                   })
