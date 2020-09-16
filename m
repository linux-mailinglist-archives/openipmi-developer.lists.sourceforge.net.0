Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF45F28672B
	for <lists+openipmi-developer@lfdr.de>; Wed,  7 Oct 2020 20:29:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kQEC2-00082J-AW; Wed, 07 Oct 2020 18:29:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tian.xianting@h3c.com>) id 1kISmQ-0002r7-Ig
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 08:27:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=SzDzRbJMdUJxrKpbk+xpvvM5dgCr2nQ70/+LbD/ULcg=; b=UHVomkMvYgqFOA+NgVfjI3KEI2
 vh9rkmwwvhZVeqMJQMhNYIZD2KnaVGyEwxqn/tz1f4Uc+C3juktjEHSB65qp/DL8jq99qWy6WoXGi
 /MNGzRsi2xiJE7m1XEbJRy4nCBEObAr0bWbttVx8IK8nPvQJ+ZVh2S+3+xfZclIUi5+0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:References:Message-ID
 :Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:
 Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
 In-Reply-To:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=SzDzRbJMdUJxrKpbk+xpvvM5dgCr2nQ70/+LbD/ULcg=; b=d
 ueh+0fsgwdcjb+Mt4wmRRLx1X8zPR3fcOgwsNs2Sp9ANDFWao4Qy7No3by/glnInMDnOmfLPeJOOm
 ZlF3bbXjAyoVblZESQ6cyxvFEisDwVCMe2pJWhl/TefDaN057FkAZGfMbdND6MpNueudRsKEBGp/9
 sJjwczyZaFXi68FE=;
Received: from smtp.h3c.com ([60.191.123.56] helo=h3cspam01-ex.h3c.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1kISmJ-00C4Eu-EX
 for openipmi-developer@lists.sourceforge.net; Wed, 16 Sep 2020 08:27:06 +0000
Received: from DAG2EX01-BASE.srv.huawei-3com.com ([10.8.0.64])
 by h3cspam01-ex.h3c.com with ESMTPS id 08G8QFQA097631
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 16 Sep 2020 16:26:15 +0800 (GMT-8)
 (envelope-from tian.xianting@h3c.com)
Received: from DAG2EX03-BASE.srv.huawei-3com.com (10.8.0.66) by
 DAG2EX01-BASE.srv.huawei-3com.com (10.8.0.64) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 16 Sep 2020 16:26:18 +0800
Received: from DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074])
 by DAG2EX03-BASE.srv.huawei-3com.com ([fe80::5d18:e01c:bbbd:c074%7])
 with mapi id 15.01.1713.004; Wed, 16 Sep 2020 16:26:18 +0800
From: Tianxianting <tian.xianting@h3c.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH] [v2] ipmi: retry to get device id when error
Thread-Index: AQHWim/ckayNXmMPfkaknRpd9ndbxKlnv4SAgAGgMND//+T7AIAAjHIggAEfhNA=
Date: Wed, 16 Sep 2020 08:26:18 +0000
Message-ID: <9ff00fb4187e42a0bd47e61fdd238292@h3c.com>
References: <20200914081313.31450-1-tian.xianting@h3c.com>
 <20200914153937.GL15602@minyard.net>
 <226f9cfc421c49278cad9572bb33ac3a@h3c.com>
 <20200915145230.GB3674@minyard.net> 
Accept-Language: en-US
Content-Language: zh-CN
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.141.128]
x-sender-location: DAG2
MIME-Version: 1.0
X-DNSRBL: 
X-MAIL: h3cspam01-ex.h3c.com 08G8QFQA097631
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-Headers-End: 1kISmJ-00C4Eu-EX
X-Mailman-Approved-At: Wed, 07 Oct 2020 18:29:26 +0000
Subject: Re: [Openipmi-developer] [PATCH] [v2] ipmi: retry to get device id
 when error
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
Would you please review this patch: add the same retry in try_get_dev_id()
https://lkml.org/lkml/2020/9/16/244

Thanks a lot.

-----Original Message-----
From: tianxianting (RD) 
Sent: Tuesday, September 15, 2020 11:20 PM
To: 'minyard@acm.org' <minyard@acm.org>
Cc: arnd@arndb.de; gregkh@linuxfoundation.org; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Subject: RE: [PATCH] [v2] ipmi: retry to get device id when error

I get it now, thank you Corey :)
I will send the patch for you review tomorrow.

-----Original Message-----
From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey Minyard
Sent: Tuesday, September 15, 2020 10:53 PM
To: tianxianting (RD) <tian.xianting@h3c.com>
Cc: arnd@arndb.de; gregkh@linuxfoundation.org; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Subject: Re: [PATCH] [v2] ipmi: retry to get device id when error

On Tue, Sep 15, 2020 at 09:40:02AM +0000, Tianxianting wrote:
> Hi Corey,
> Thanks for your comments,
> Please review these two patches, which are based on your guide.
> 1, [PATCH] ipmi: print current state when error
> https://lkml.org/lkml/2020/9/15/183
> 2, [PATCH] [v3] ipmi: retry to get device id when error
> https://lkml.org/lkml/2020/9/15/156

Patches are applied and in my next tree.

> 
> As you said "You are having the same issue in the ipmi_si code. It's choosing defaults, but that's not ideal.  You probably need to handle this there, too, in a separate patch."
> I am not sure whether I grasped what you said, The print ' device id 
> demangle failed: -22' in commit message, is just triggered by bmc_device_id_handler->ipmi_demangle_device_id, this is the issue we met and is solving.
> I found try_get_dev_id(in drivers/char/ipmi/ipmi_si_intf.c) also called ipmi_demangle_device_id(), do you mean if this ipmi_demangle_device_id() returned error, we also need to retry?

Yes, I think so, retrying in try_get_dev_id() would be a good idea, I think.  You are probably getting sub-optimal performance if you don't do this.

Thanks,

-corey

> 
> Thanks a lot.
> 
> -----Original Message-----
> From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey 
> Minyard
> Sent: Monday, September 14, 2020 11:40 PM
> To: tianxianting (RD) <tian.xianting@h3c.com>
> Cc: arnd@arndb.de; gregkh@linuxfoundation.org; 
> openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] [v2] ipmi: retry to get device id when error
> 
> On Mon, Sep 14, 2020 at 04:13:13PM +0800, Xianting Tian wrote:
> > We can't get bmc's device id with low probability when loading ipmi 
> > driver, it caused bmc device register failed. When this issue 
> > happened, we got below kernel printks:
> 
> This patch is moving in the right direction.  For the final patch(es), I can clean up the english grammar issues, since that's not your native language.  A few comments:
> 
> > 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: IPMI message handler: 
> > device id demangle failed: -22
> 
> You are having the same issue in the ipmi_si code.  It's choosing defaults, but that's not ideal.  You probably need to handle this there, too, in a separate patch.
> 
> Can you create a separate patch to add a dev_warn() to the BT code when it returns IPMI_NOT_IN_MY_STATE_ERR, like I asked previously?  And print the current state when it happens.  That way we know where this issue is coming from and possibly fix the state machine.  I'm thinking that the BMC is just not responding, but I'd like to be sure.
> 
> Other comments inline...
> 
> > 	[Wed Sep  9 19:52:03 2020] IPMI BT: using default values
> > 	[Wed Sep  9 19:52:03 2020] IPMI BT: req2rsp=5 secs retries=2
> > 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: Unable to get the device id: -5
> > 	[Wed Sep  9 19:52:04 2020] ipmi_si IPI0001:00: Unable to register
> > device: error -5
> > 
> > When this issue happened, we want to manually unload the driver and 
> > try to load it again, but it can't be unloaded by 'rmmod' as it is already 'in use'.
> > 
> > We add below 'printk' in handle_one_recv_msg(), when this issue 
> > happened, the msg we received is "Recv: 1c 01 d5", which means the 
> > data_len is 1, data[0] is 0xd5(completion code), which means "bmc cannot execute command.
> > Command, or request parameter(s), not supported in present state".
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
> > correctly response kernel when we received specific completion code.
> > 
> > Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> > ---
> >  drivers/char/ipmi/ipmi_msghandler.c | 29 +++++++++++++++++++++++++----
> >  include/uapi/linux/ipmi_msgdefs.h   |  2 ++
> >  2 files changed, 27 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/char/ipmi/ipmi_msghandler.c
> > b/drivers/char/ipmi/ipmi_msghandler.c
> > index 737c0b6b2..07d5be2cd 100644
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
> >  static int panic_op_write_handler(const char *val, @@ -317,6 +321,7 
> > @@ struct bmc_device {
> >  	int                    dyn_guid_set;
> >  	struct kref	       usecount;
> >  	struct work_struct     remove_work;
> > +	char		       cc; /* completion code */
> >  };
> >  #define to_bmc_device(x) container_of((x), struct bmc_device,
> > pdev.dev)
> >  
> > @@ -2381,6 +2386,8 @@ static void bmc_device_id_handler(struct ipmi_smi *intf,
> >  			msg->msg.data, msg->msg.data_len, &intf->bmc->fetch_id);
> >  	if (rv) {
> >  		dev_warn(intf->si_dev, "device id demangle failed: %d\n", rv);
> > +		/* record completion code when error */
> > +		intf->bmc->cc = msg->msg.data[0];
> >  		intf->bmc->dyn_id_set = 0;
> >  	} else {
> >  		/*
> > @@ -2426,19 +2433,34 @@ send_get_device_id_cmd(struct ipmi_smi
> > *intf) static int __get_device_id(struct ipmi_smi *intf, struct 
> > bmc_device
> > *bmc)  {
> >  	int rv;
> > -
> > -	bmc->dyn_id_set = 2;
> > +	unsigned int retry_count = 0;
> 
> You need to initialize bmc->cc to 0 here.
> 
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
> > +		if ((bmc->cc == IPMI_NOT_IN_MY_STATE_ERR
> > +		     || bmc->cc == IPMI_NOT_IN_MY_STATE_ERR_1
> > +		     || bmc->cc == IPMI_NOT_IN_MY_STATE_ERR_2)
> > +		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> > +			msleep(500);
> > +			dev_warn(intf->si_dev,
> > +				"retry to get bmc device id as completion code 0x%x\n",
> > +				bmc->cc);
> > +			bmc->cc = 0;
> > +			goto retry;
> > +		}
> > +
> >  		rv = -EIO; /* Something went wrong in the fetch. */
> > +	}
> >  
> >  	/* dyn_id_set makes the id data available. */
> >  	smp_rmb();
> > @@ -3245,7 +3267,6 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
> >  		/* It's the one we want */
> >  		if (msg->msg.data[0] != 0) {
> >  			/* Got an error from the channel, just go on. */
> > -
> >  			if (msg->msg.data[0] == IPMI_INVALID_COMMAND_ERR) {
> >  				/*
> >  				 * If the MC does not support this diff --git 
> > a/include/uapi/linux/ipmi_msgdefs.h
> > b/include/uapi/linux/ipmi_msgdefs.h
> > index c2b23a9fd..46a0df434 100644
> > --- a/include/uapi/linux/ipmi_msgdefs.h
> > +++ b/include/uapi/linux/ipmi_msgdefs.h
> > @@ -70,6 +70,8 @@
> >  #define IPMI_REQ_LEN_INVALID_ERR	0xc7
> >  #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
> >  #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
> > +#define IPMI_NOT_IN_MY_STATE_ERR_1	0xd1
> 
> For the above name, can you use IPMI_DEVICE_IN_FW_UPDATE_ERR to match the spec?
> 
> > +#define IPMI_NOT_IN_MY_STATE_ERR_2	0xd2
> 
> For the above name, can you use IPMI_DEVICE_IN_INIT_ERR to match the spec?
> 
> Thanks,
> 
> -corey
> 
> >  #define IPMI_LOST_ARBITRATION_ERR	0x81
> >  #define IPMI_BUS_ERR			0x82
> >  #define IPMI_NAK_ON_WRITE_ERR		0x83
> > --
> > 2.17.1
> > 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
