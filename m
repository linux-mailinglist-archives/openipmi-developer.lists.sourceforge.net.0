Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B8833268094
	for <lists+openipmi-developer@lfdr.de>; Sun, 13 Sep 2020 19:26:39 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kHVlt-0007Ia-Mb; Sun, 13 Sep 2020 17:26:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kHVlr-0007IT-SA
 for openipmi-developer@lists.sourceforge.net; Sun, 13 Sep 2020 17:26:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UKGm1o6ci+6OzS/GEtQveNQ09fS6eC3dzYofKCv9jQc=; b=PC6Im8HjR0WB0i13uM6ZtC8dMV
 4Rfq+hniTpQRMact86lcO2MoFARLcCkvUML6by3XyXLnnYWD+fZTb+hNYEA20M9ko0fhlFU+E991Z
 zz4tCQpc+Y8hYUnS06mPgZu01Mhw+uuJ2W1MrRnung63iyTS2/xC+WBy5ddxUCguIR1A=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UKGm1o6ci+6OzS/GEtQveNQ09fS6eC3dzYofKCv9jQc=; b=J2Xo/g1VN847XapMZSQFA7meLs
 jt13gEBC7miudI6YHPFlU8xDpfBPlhcsoc2s4S2eYKBgTmbiSVvHoogtY8rhZZ6gZWiUok1BvbVgE
 9jIVW2Mc3kJ3gPEcOcgQvnH2KDIykUi1n9fK9n2V3QgjhcVjPZfKBB0ruKg7Utt+wO/Y=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kHVln-007y4u-Vz
 for openipmi-developer@lists.sourceforge.net; Sun, 13 Sep 2020 17:26:35 +0000
Received: by mail-ot1-f68.google.com with SMTP id c10so12790869otm.13
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 13 Sep 2020 10:26:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UKGm1o6ci+6OzS/GEtQveNQ09fS6eC3dzYofKCv9jQc=;
 b=qfeOXAtlRDa585kNr3Der+wBnxr114EMqq17zu8BM5iDOIL7rR4XZJ9gPOtq/OLXwk
 mlzjCOSAnHKLHGp9YorzRuSiesr5Jv1Ib7M9zKA8uQrp8LBvDGpfk/wUlFCx2zfQh8EW
 9mocwO8Y/hevYAjd7ijjmYTV0pIlJMDNwCcbsZ/+e/206yAZM7iYQQLtTkvYrPwdCIFg
 EYNByJ/qCTNc5pRsNNAzu/UpLpT2LU1/MLeX4lohinXkl9/qI2dazlawWJ1lQsUZzm0R
 FqDLPW7JPhRCkbb8E32cM0YdxmwCqgZwuY5kHGn+WwOM5I/O4mazbd7R+rTTs745o3xE
 zFgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=UKGm1o6ci+6OzS/GEtQveNQ09fS6eC3dzYofKCv9jQc=;
 b=d38ZMk9nrFtKIFIVqDpgxCi4P9kyu4jWEPIe0TpMvJ2zv+NgnAEZaBSJEqKspqwdAn
 uJ0I7dil/b9e2OpX/h7cs2+uvxWYOwHcc5zMPow8rrYC/+iobdmjS0vgHTtVYYmfmJDz
 dGmr9hxDFMGPl48RqR4Tof3cECMlxrmi9U3vX/7NzSYM5aFKDVWbfx5Phw4dc+Q62Kwi
 GzngUoLiklxnrbRRi+xo3WFgkPTPcSYTnx4Oe2Hla5fU0W/yO0RK2A3WLlv9MUW5RJ0v
 6Th8otyQbHG+Kni9HnZzGB1DGch9Oz0CpflSyJGdiSsgCOnOsbZVDDAdLlF0LPxVbu1q
 p9ZA==
X-Gm-Message-State: AOAM531RHfTHPH+oTSdw54uH3YP6/1ktqUDO6LsNaEZyQJmWmX6Qi1dI
 rnp8YoZMT3bTz94ph8nTVQ==
X-Google-Smtp-Source: ABdhPJxQBW52K8fMchI97XM8veaegh1EWnK6b/7ohJYYpJCQPgdzCRJda6/bFA8OLPJtg5yQNLJaTg==
X-Received: by 2002:a9d:2384:: with SMTP id t4mr6183643otb.337.1600017986230; 
 Sun, 13 Sep 2020 10:26:26 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id l23sm1803466otk.79.2020.09.13.10.26.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Sep 2020 10:26:25 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ecd3:d2ae:8b57:1a08])
 by serve.minyard.net (Postfix) with ESMTPSA id DEFCA180056;
 Sun, 13 Sep 2020 17:26:23 +0000 (UTC)
Date: Sun, 13 Sep 2020 12:26:22 -0500
From: Corey Minyard <minyard@acm.org>
To: Tianxianting <tian.xianting@h3c.com>
Message-ID: <20200913172622.GI15602@minyard.net>
References: <20200913120203.3368-1-tian.xianting@h3c.com>
 <20200913123930.GH15602@minyard.net>
 <a5ac0e7e90a442e6b29ba243ae1920c0@h3c.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a5ac0e7e90a442e6b29ba243ae1920c0@h3c.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: h3c.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kHVln-007y4u-Vz
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
Reply-To: minyard@acm.org
Cc: "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "arnd@arndb.de" <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Sep 13, 2020 at 02:10:01PM +0000, Tianxianting wrote:
> Hi Corey
> Thanks for your quickly reply,
> We didn't try the method you mentioned, actually, I didn't know it before you told me:(
> The issue ever occurred on our 2 ceph storage server both with low probability.
> We finally use this patch to solve the issue, it can automatically solve the issue when it happened. So no need to judge and reload ipmi driver manually or develop additional scripts to make it.
> The 1 second delay is acceptable to us.
> 
> If there really isn't a BMC out there, ipmi driver will not be loaded, is it right?

No, there are systems that have IPMI controllers that are specified in
the ACPI/SMBIOS tables but have no IPMI controller.

> 
> May be we can adjust to retry 3 times with 500ms interval? 

Maybe there is another way.  What I'm guessing is happening is not that
the interface is lossy, but that the BMC is in the middle of a reset or
an upgrade.  The D5 completion code means: Cannot execute command. Command,
or request parameter(s), not supported in present state.

That error is also returned from bt_start_transaction() in the driver if
the driver is not in the right state when starting a transaction,
which may point to a bug in the BT state machine.  Search for
IPMI_NOT_IN_MY_STATE_ERR in drivers/char/ipmi/ipmi_bt_sm.c.

If it's coming fron the state machine, it would be handy to know what
state it was in when the error happened to help trace the bug down.
That's what I would suggest first.  Fix the fundamental bug, if you can.
a pr_warn() added to the code there would be all that's needed, and
thats probably a good permanent addition.

I would be ok with a patch that retried some number of times if it got a
D5 completion code.  That wouldn't have any effect on other systems.
Plus you could add a D1 and D2 completion code, which are similar
things.  Add the new completion codes to include/uapi/linux/ipmi_msgdefs.h
and implement the retry.  That makes sense from a general point of view.

Thanks,

-corey

> 
> Thanks in advance if you can feedback again.
> 
> -----Original Message-----
> From: Corey Minyard [mailto:tcminyard@gmail.com] On Behalf Of Corey Minyard
> Sent: Sunday, September 13, 2020 8:40 PM
> To: tianxianting (RD) <tian.xianting@h3c.com>
> Cc: arnd@arndb.de; gregkh@linuxfoundation.org; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
> Subject: Re: [PATCH] ipmi: retry to get device id when error
> 
> On Sun, Sep 13, 2020 at 08:02:03PM +0800, Xianting Tian wrote:
> > We can't get bmc's device id with low probability when loading ipmi 
> > driver, it caused bmc device register failed. This issue may caused by 
> > bad lpc signal quality. When this issue happened, we got below kernel printks:
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
> > reproduced this issue again and the retry succeed on the first retry, 
> > we finally got the correct msg and then all is ok:
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
> > +2430,26 @@ send_get_device_id_cmd(struct ipmi_smi *intf)  static int 
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
