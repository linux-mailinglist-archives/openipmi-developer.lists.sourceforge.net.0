Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 0985F286723
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:35 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEBx-0007xr-Ba; Wed, 07 Oct 2020 18:29:33 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tian.xianting@h3c.com>) id 1kHjom-0004cT-K3
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:26:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YO5GC4jA+5Pqkom8BECadCA2OOFW2qFE8KkZvZ6sYrw=; b=Fi8Oj20l9nCHcCY/X8/z5MCdzo
 6kmttAas4j0CXeIlXEL/MdlQ8bDgUDym3MP7mTg7NRBNpjO1/BHMCFCOLhuOEwyMdwCiDvx4OEMi7
 R2zzXa0Y7H+UlRU1NxhfqhpkGNxRtY+XY4QK1bp/Qi2qoXVBQERkUXL+Kts0M0uUiT8c=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=YO5GC4jA+5Pqkom8BECadCA2OOFW2qFE8KkZvZ6sYrw=; b=UJcLePj63ll5j2xQP1zjAKT5L2
 dS+0ipGqONhwasinquDrSF9SICbMzHQ20nIghKe64tIqQGji2FBevrzNTznAsNze1h8lvLopWeJGj
 5EtAkj3A3/rjyHkziPsZgBgVnr615etp6cbcyxun7g2yGLK8p3nr1UZR6/MGQ2utg9jo=;
Received: from smtp.h3c.com ([60.191.123.56] helo=h3cspam01-ex.h3c.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kHjoi-008rNA-Bw
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 08:26:32 +0000
Received: from DAG2EX02-BASE.srv.huawei-3com.com ([10.8.0.65])
 by h3cspam01-ex.h3c.com with ESMTPS id 08E8PM4L038283
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 14 Sep 2020 16:25:22 +0800 (GMT-8)
 (envelope-from tian.xianting@h3c.com)
Received: from DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66) by
 DAG2EX02-BASE.srv.huawei-3com.com (10.8.0.65) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Mon, 14 Sep 2020 16:25:24 +0800
Received: from DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074])
 by DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074%7])
 with mapi id 15.01.1713.004; Mon, 14 Sep 2020 16:25:24 +0800
From: Tianxianting <tian.xianting@h3c.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] ipmi: retry to get device id when error
Thread-Index: AQHWicayYDI4BxkBBkSNG1QnUn+lFKll/C8AgACPz+D//8BXAIABgCiw
Date: Mon, 14 Sep 2020 08:25:24 +0000
Message-ID: <b3f5d1e3b4e741a7874680a4e3bc4c57@h3c.com>
References: <20200913120203.3368-1-tian.xianting@h3c.com>
 <20200913123930.GH15602@minyard.net>
 <a5ac0e7e90a442e6b29ba243ae1920c0@h3c.com>
 <20200913172622.GI15602@minyard.net>
In-Reply-To: <20200913172622.GI15602@minyard.net>
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.141.128]
x-sender-location: DAG2
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: h3cspam01-ex.h3c.com 08E8PM4L038283
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: h3c.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kHjoi-008rNA-Bw
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:25 +0000
Subject: Re: [Openipmi-developer] [PATCH] ipmi: retry to get device id when
 error
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Corey,
Thanks a lot for you kindly guide.

I send the version 2 patch to you: [PATCH] [v2] ipmi: retry to get device id when error
If there is still something wrong or I missed something, please correct me:)

-----Original Message-----
From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey Minyard
Sent: Monday, September 14, 2020 1:26 AM
To: tianxianting (RD) <tian.xianting@h3c.com>
Cc: arnd@arndb.de; gregkh@linuxfoundation.org; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] ipmi: retry to get device id when error

On Sun, Sep 13, 2020 at 02:10:01PM +0000, Tianxianting wrote:
> Hi Corey
> Thanks for your quickly reply,
> We didn't try the method you mentioned, actually, I didn't know it 
> before you told me:( The issue ever occurred on our 2 ceph storage server both with low probability.
> We finally use this patch to solve the issue, it can automatically solve the issue when it happened. So no need to judge and reload ipmi driver manually or develop additional scripts to make it.
> The 1 second delay is acceptable to us.
> 
> If there really isn't a BMC out there, ipmi driver will not be loaded, is it right?

No, there are systems that have IPMI controllers that are specified in the ACPI/SMBIOS tables but have no IPMI controller.

> 
> May be we can adjust to retry 3 times with 500ms interval? 

Maybe there is another way.  What I'm guessing is happening is not that the interface is lossy, but that the BMC is in the middle of a reset or an upgrade.  The D5 completion code means: Cannot execute command. Command, or request parameter(s), not supported in present state.

That error is also returned from bt_start_transaction() in the driver if the driver is not in the right state when starting a transaction, which may point to a bug in the BT state machine.  Search for IPMI_NOT_IN_MY_STATE_ERR in drivers/char/ipmi/ipmi_bt_sm.c.

If it's coming fron the state machine, it would be handy to know what state it was in when the error happened to help trace the bug down.
That's what I would suggest first.  Fix the fundamental bug, if you can.
a pr_warn() added to the code there would be all that's needed, and thats probably a good permanent addition.

I would be ok with a patch that retried some number of times if it got a
D5 completion code.  That wouldn't have any effect on other systems.
Plus you could add a D1 and D2 completion code, which are similar things.  Add the new completion codes to include/uapi/linux/ipmi_msgdefs.h and implement the retry.  That makes sense from a general point of view.

Thanks,

-corey

> 
> Thanks in advance if you can feedback again.
> 
> -----Original Message-----
> From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey 
> Minyard
> Sent: Sunday, September 13, 2020 8:40 PM
> To: tianxianting (RD) <tian.xianting@h3c.com>
> Cc: arnd@arndb.de; gregkh@linuxfoundation.org; 
> openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ipmi: retry to get device id when error
> 
> On Sun, Sep 13, 2020 at 08:02:03PM +0800, Xianting Tian wrote:
> > We can't get bmc's device id with low probability when loading ipmi 
> > driver, it caused bmc device register failed. This issue may caused 
> > by bad lpc signal quality. When this issue happened, we got below kernel printks:
> > 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: IPMI message handler: device id demangle failed: -22
> > 	[Wed Sep  9 19:52:03 2020] IPMI BT: using default values
> > 	[Wed Sep  9 19:52:03 2020] IPMI BT: req2rsp=5 secs retries=2
> > 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: Unable to get the device id: -5
> > 	[Wed Sep  9 19:52:04 2020] ipmi_si IPI0001:00: Unable to register
> > device: error -5
> > 
> > When this issue happened, we want to manually unload the driver and 
> > try to load it again, but it can't be unloaded by 'rmmod' as it is already 'in use'.
> 
> I'm not sure this patch is a good idea; it would cause a long boot delay in situations where there really isn't a BMC out there.  Yes, it happens.
> 
> You don't have to reload the driver to add a device, though.  You can hot-add devices using /sys/modules/ipmi_si/parameters/hotmod.  Look in Documentation/driver-api/ipmi.rst for details.
> 
> Does that work for you?
> 
> -corey
> 
> > 
> > We add below 'printk' in handle_one_recv_msg(), when this issue 
> > happened, the msg we received is "Recv: 1c 01 d5", which means the 
> > data_len is 1, data[0] is 0xd5.
> > 	Debug code:
> > 	static int handle_one_recv_msg(struct ipmi_smi *intf,
> >                                struct ipmi_smi_msg *msg) {
> >         	printk("Recv: %*ph\n", msg->rsp_size, msg->rsp);
> > 		... ...
> > 	}
> > Then in ipmi_demangle_device_id(), it returned '-EINVAL' as 'data_len < 7'
> > and 'data[0] != 0'.
> > 
> > We used this patch to retry to get device id when error happen, we 
> > reproduced this issue again and the retry succeed on the first 
> > retry, we finally got the correct msg and then all is ok:
> > Recv: 1c 01 00 01 81 05 84 02 af db 07 00 01 00 b9 00 10 00
> > 
> > So use retry machanism in this patch to give bmc more opportunity to 
> > correctly response kernel.
> > 
> > Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 17 ++++++++++++++---
> >  1 file changed, 14 insertions(+), 3 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c
> > b/drivers/char/ipmi/ipmi_msghandler.c
> > index 737c0b6b2..bfb2de77a 100644
> > --- a/drivers/char/ipmi/ipmi_msghandler.c
> > +++ b/drivers/char/ipmi/ipmi_msghandler.c
> > @@ -34,6 +34,7 @@
> >  #include <linux/uuid.h>
> >  #include <linux/nospec.h>
> >  #include <linux/vmalloc.h>
> > +#include <linux/delay.h>
> >  
> >  #define IPMI_DRIVER_VERSION "39.2"
> >  
> > @@ -60,6 +61,9 @@ enum ipmi_panic_event_op {  #else  #define 
> > IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_NONE  #endif
> > +
> > +#define GET_DEVICE_ID_MAX_RETRY	5
> > +
> >  static enum ipmi_panic_event_op ipmi_send_panic_event = 
> > IPMI_PANIC_DEFAULT;
> >  
> >  static int panic_op_write_handler(const char *val, @@ -2426,19
> > +2430,26 @@ send_get_device_id_cmd(struct ipmi_smi *intf)  static 
> > +int
> > __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)  {
> >  	int rv;
> > -
> > -	bmc->dyn_id_set = 2;
> > +	unsigned int retry_count = 0;
> >  
> >  	intf->null_user_handler = bmc_device_id_handler;
> >  
> > +retry:
> > +	bmc->dyn_id_set = 2;
> > +
> >  	rv = send_get_device_id_cmd(intf);
> >  	if (rv)
> >  		return rv;
> >  
> >  	wait_event(intf->waitq, bmc->dyn_id_set != 2);
> >  
> > -	if (!bmc->dyn_id_set)
> > +	if (!bmc->dyn_id_set) {
> > +		msleep(1000);
> > +		if (++retry_count <= GET_DEVICE_ID_MAX_RETRY)
> > +			goto retry;
> > +
> >  		rv = -EIO; /* Something went wrong in the fetch. */
> > +	}
> >  
> >  	/* dyn_id_set makes the id data available. */
> >  	smp_rmb();
> > --
> > 2.17.1
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
