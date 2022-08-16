Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A9AF1595B7F
	for <lists+openipmi-developer@lfdr.de>; Tue, 16 Aug 2022 14:14:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oNvSI-0001Vj-EZ;
	Tue, 16 Aug 2022 12:13:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oNvSF-0001Vc-CD
 for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Aug 2022 12:13:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=4BoAicbCrohuisihIU6MA2FQ50UTKub8ASKOK6g80ao=; b=ElSltJ7Xpg8vuSjSVOp4/5ndtu
 4SU5T3sgyl6fhgQaqb/e2SbUodZ0RhA8M2q5jfPACtg4td5KJlGUly8nzRxbSpZOGT1Papu7zeZts
 FHqCC1wkanzZgvq7vA8xd3Kiixs7GJySdctM6TWzLOOm4zELBMjkH13sG6lXqy+A/9eI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=4BoAicbCrohuisihIU6MA2FQ50UTKub8ASKOK6g80ao=; b=QeJpM2vg4u6sVxFtMh/+s2O04A
 QgQByi14WRV1MHEcW70Y5te0JDDVAZIcYs6b/9x5/cY5X91Yy5/JsBPXXRjtbUNu9Nq5rhY4hC7I8
 9AGmpARBDitVH5crZAeTh96uLEl4/qS8olTVWjVPvcdYV4vL3qi2MzUzftFc6NK7yhKQ=;
Received: from mail-qt1-f180.google.com ([209.85.160.180])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oNvSE-004Miu-FG for openipmi-developer@lists.sourceforge.net;
 Tue, 16 Aug 2022 12:13:55 +0000
Received: by mail-qt1-f180.google.com with SMTP id a4so7899875qto.10
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 16 Aug 2022 05:13:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc;
 bh=4BoAicbCrohuisihIU6MA2FQ50UTKub8ASKOK6g80ao=;
 b=qyB60tAATac1a3NLpTr67koYhpuYNovZdw6x1zINbv8MCx0MdQwouCpB8fiMkEjHBI
 ouuYBgjWkPHw4tIKSLz6iicQX7jJUzmSJBwF66cxBp024pIOLufbb+qJ1TcbuZc6QPvQ
 BIUpDFI4UF8fuEXahhU4u9Ss14/UhjLuYurKXk8vZaJKr2GZ2hxoUnOI6a4r/5ytbDwr
 +a3Lqx34SQph3Jysy6Dct165/6q/czMwmStR/p/3zmNyP24UGQYv5bT5oUeLBsVm09dA
 0kTkCxsn+hlsWcYNiTPtu+bmuoCcf8nZvnjzWMEXgU0MmqvOignLqxFnaqh1PaBAdusT
 Ht9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc;
 bh=4BoAicbCrohuisihIU6MA2FQ50UTKub8ASKOK6g80ao=;
 b=BPrZNUaVX2DjDnTkMtQoYczuqfYh1KmOJNyHR1MFoyWOP5oB5MahX5ykFonsq5I9v2
 DsTl3wUhnBx/V8tuc4KAOwefU/Sl3axeVykYt+uBlZ+Of7yW1ZeGIO1a8b2b6ZHbUsoP
 gsfy6UEMlivxXbXn6uq5r/OU3764sOa1Tcg793zZHM1/9a7hJsErySL3udZGPK0EBc3G
 16beDs335LIybAnxRJkMeP58g+yBlb0IbdVsRJB9bv52CVkJ9QJIGjYC5k17i0eHmpoi
 E4xCd7hJpXRgwvmIbpfeoui2TO7zajGQS0PAOgU+Yqa11IVdj652aMlEIPVKVWblkgeU
 sJRA==
X-Gm-Message-State: ACgBeo0DQS2108GD2VBdbfY+IV2XM8fDoumGjpPzUtSdDohVxW4+uvFB
 0+Rdk9tlaN+FKo0rZsnuZAKWL9jyRg==
X-Google-Smtp-Source: AA6agR5+IZDG66w2OkciGVNVelPRhTThO8LNa6KRF60/wNfVOuE804yj+Tp7P4sZoFxeV3+EXhBWPw==
X-Received: by 2002:ac8:59d0:0:b0:344:6017:ce2f with SMTP id
 f16-20020ac859d0000000b003446017ce2fmr7705490qtf.474.1660652028564; 
 Tue, 16 Aug 2022 05:13:48 -0700 (PDT)
Received: from serve.minyard.net ([47.184.144.75])
 by smtp.gmail.com with ESMTPSA id
 b8-20020ae9eb08000000b006b8f4ade2c9sm10893088qkg.19.2022.08.16.05.13.47
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 16 Aug 2022 05:13:48 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ccfd:a46b:94bd:b296])
 by serve.minyard.net (Postfix) with ESMTPSA id 0409D1828A0;
 Tue, 16 Aug 2022 12:13:47 +0000 (UTC)
Date: Tue, 16 Aug 2022 07:13:45 -0500
From: Corey Minyard <minyard@acm.org>
To: Jay Vosburgh <jay.vosburgh@canonical.com>
Message-ID: <20220816121345.GQ2939323@minyard.net>
References: <1095.1660347198@famine> <20220813013516.GJ2939323@minyard.net>
 <7141.1660612540@famine>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <7141.1660612540@famine>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Aug 15, 2022 at 06:15:40PM -0700, Jay Vosburgh wrote:
 > Corey Minyard <minyard@acm.org> wrote: > > >On Fri, Aug 12,
 2022 at 04:33:18PM
 -0700, Jay Vosburgh wrote: > >> We have observed issues w [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.180 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.180 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1oNvSE-004Miu-FG
Subject: Re: [Openipmi-developer] [PATCH] ipmi: don't wait forever when
 querying BMC device id
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
Cc: openipmi-developer@lists.sourceforge.net,
 Ioanna-Maria Alifieraki <ioanna-maria.alifieraki@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 15, 2022 at 06:15:40PM -0700, Jay Vosburgh wrote:
> Corey Minyard <minyard@acm.org> wrote:
> 
> >On Fri, Aug 12, 2022 at 04:33:18PM -0700, Jay Vosburgh wrote:
> >> We have observed issues wherein the IPMI driver will sleep forever in
> >> uninterruptible wait with mutexes held (specifically, dyn_mutex and
> >> bmc_reg_mutex, acquired by __bmc_get_device_id).  This occurs ultimately
> >> due to a BMC firmware bug; the BMC will fail to respond to requests,
> >> apparently related to the request rate, and the current logic will wait
> >> forever.
> >
> >This really isn't the right fix.  The state machines running the
> >interfaces are required to time out after a period of time, usually
> >5 seconds, but that depends on how the hardware is behaving, or
> >misbehaving in this case.  So though these are not timed mutexes, what
> >is running below should be timed, so it shouldn't be necessary here.
> 
> 	We did try and follow the code paths to figure out what's going
> on at the lower levels, but the IPMI logic is fairly complex.

Yes.  IPMI defines four different interfaces, and the code makes them
all look pretty much the same.  There are a large number of ways
interfaces can be discovered or added (hard coded, hot plug, pci,
OF, ACPI, SMBIOS, and machine-specific methods) and three different ways
to talk to the hardware (port, memory mapped, and SMBus).  Plus
interrupts or no interrupts, different register spacing and layout.  It
leads to an unfortunate amount of complexity.

The ipmi_msghandler.c code is mostly a message router, not interface
handling.  You can ignore most of that code and look right at the
interface you are using.

> 
> 	As best we could determine, the send path for __bmc_get_device_id
> is something like:
> 
> __bmc_get_device_id
> 	__get_guid
> 		send_guid_cmd
> 			i_ipmi_request
> 				smi_send
> 		wait_event
> 
> 	where i_ipmi_request() calls i_ipmi_req_sysintf(), because
> send_guid_cmd() sets addr_type == IPMI_SYSTEM_INTERFACE_ADDR_TYPE, and
> then smi_send() to issue the request.
> 
> send_guid_cmd
> 	i_ipmi_request
> 		i_ipmi_req_sysintf
> 		smi_send
> 
> 	I presume that if the request goes out via SMI, the response
> should arrive the same way (perhaps this is incorrect).

It should come back from the same place you sent it to, yes.  But
smi_send itself is not specific.

> 
> 	It looks like the only place outside of the "make a request"
> path that will tweak the dyn_guid_set (needed to exit the wait_event()
> call) is within guid_handler(), which is the intf->null_user_handler set
> by __get_guid(), which in turn seems to be only called by
> deliver_response().
> 
> 	Where are the state machines for the interfaces that should time
> out?  Do they (or should they) call into deliver_response() to break out
> of the wait_event()?

The state machine depends on the low-leel interface.  If it is kcs, bt,
or smic, it uses ipmi_si_intf.c, which then uses one of ipmi_kcs_sm.c,
ipmi_bt_sm.c, or ipmi_smic_sm.c to run the low-level state machine.

There is debugging you can enable in ipmi_smi_intf.c and in each
low-level driver.

If your interface is ssif (SMBus based), then ipmi_ssif.c contains the
code.  You can enabled debugging there, too.

We have had this issue before, and someone suggested the same fix you
did, but we ended up fixing the issue in the state machine.  If you fix
this in the upper level like you have, you will just have the same issue
again if the user software does the same command the BMC does here.
Which is quite likely.

If worse comes to worse, we can add a workaround for your specific
hardware.  Which has also been done.  But fixing the state machine is
really the right thing to do.

-corey

> 
> >What is the particular hardware involved?  The buggy hardware may be
> >exercising a software bug.
> 
> 	The systems are white box servers from Ciara, the BMC chipset is
> an AST2500.
> 
> 	-J
> 
> >-corey
> >
> >> 
> >> When the problem occurs, as each successive process queries the BMC,
> >> they will block in D state waiting to acquire the mutex, and with time
> >> the machine hangs. The BMC vendor has agreed it may be a hardware fault.
> >> 
> >> This patch addresses the problem by replacing wait_event() with
> >> wait_event_timeout(). If the event times out (meaning the problem has
> >> occurred) the bmc->dyn_id_set and bmc->dyn_guid_set are set to 0 and the
> >> process eventually returns.
> >> 
> >> Fixes: aa9c9ab2443e ("ipmi: allow dynamic BMC version information")
> >> Signed-off-by: Jay Vosburgh <jay.vosburgh@canonical.com>
> >> Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> >> 
> >> ---
> >>  drivers/char/ipmi/ipmi_msghandler.c | 14 ++++++++++----
> >>  1 file changed, 10 insertions(+), 4 deletions(-)
> >> 
> >> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> >> index 703433493c85..a510839853b5 100644
> >> --- a/drivers/char/ipmi/ipmi_msghandler.c
> >> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> >> @@ -2572,7 +2572,9 @@ static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
> >>  	if (rv)
> >>  		goto out_reset_handler;
> >>  
> >> -	wait_event(intf->waitq, bmc->dyn_id_set != 2);
> >> +	rv = wait_event_timeout(intf->waitq, bmc->dyn_id_set != 2, HZ * 5);
> >> +	if (!rv)
> >> +		bmc->dyn_id_set = 0;
> >>  
> >>  	if (!bmc->dyn_id_set) {
> >>  		if (bmc->cc != IPMI_CC_NO_ERROR &&
> >> @@ -3337,11 +3339,15 @@ static void __get_guid(struct ipmi_smi *intf)
> >>  	bmc->dyn_guid_set = 2;
> >>  	intf->null_user_handler = guid_handler;
> >>  	rv = send_guid_cmd(intf, 0);
> >> -	if (rv)
> >> +	if (rv) {
> >>  		/* Send failed, no GUID available. */
> >>  		bmc->dyn_guid_set = 0;
> >> -	else
> >> -		wait_event(intf->waitq, bmc->dyn_guid_set != 2);
> >> +	} else {
> >> +		rv = wait_event_timeout(intf->waitq, bmc->dyn_guid_set != 2,
> >> +					HZ * 5);
> >> +		if (!rv)
> >> +			bmc->dyn_guid_set = 0;
> >> +	}
> >>  
> >>  	/* dyn_guid_set makes the guid data available. */
> >>  	smp_rmb();
> >> -- 
> >> 2.34.1
> >> 
> 
> ---
> 	-Jay Vosburgh, jay.vosburgh@canonical.com


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
