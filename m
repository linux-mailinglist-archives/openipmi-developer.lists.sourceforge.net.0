Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E6CE26902F
	for <lists+openipmi-developer@lfdr.de>; Mon, 14 Sep 2020 17:39:56 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kHqa9-00006W-91; Mon, 14 Sep 2020 15:39:53 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kHqa8-00006M-9L
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:39:52 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tnt/torS5GIdTgqngWRWdNvPaQlp0a+hbcfz+C+q7aw=; b=JRjHTemXjnJ1R/8Po/aAZKoqua
 mQwKGGiT+yGCvkTv8hz+KwBvNVEOhz7vTBA5t4l36rKd+Lw2tKflRcugFmIocQkk30JUQDU4CQQ7l
 qUHBoQFoEbEAMcqJuV82bQX63ajNaMvBSePpRlt6xAG4WLxDTCDyRJVWCDSNbfaQJ5+I=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=tnt/torS5GIdTgqngWRWdNvPaQlp0a+hbcfz+C+q7aw=; b=dvCwCgaf2V42jJzTJPRoAIUvlc
 GoxbAScxm/6qtKEfGRKs2toEXA6lSnj/UO99Sk9L5Hma2hq6/sjXkfdTEiKOPOkLDV5Rxoi7A5TLi
 K6iLAUwalL1op8fT5dwGyEvdziNDNZ8algKbcDPW1k9J7YZRzia91xv0zpuyQfASn3aQ=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kHqa2-009L0r-U2
 for openipmi-developer@lists.sourceforge.net; Mon, 14 Sep 2020 15:39:52 +0000
Received: by mail-ot1-f68.google.com with SMTP id c10so277626otm.13
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 14 Sep 2020 08:39:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=tnt/torS5GIdTgqngWRWdNvPaQlp0a+hbcfz+C+q7aw=;
 b=rDAnonFCXhbg44zDMllynFH31Lk7a5aepUflNhdaAKxPlRZDdp2pgd2mCdFd4bipMM
 mcCwLG6Uk0i3Iid/iI+nkqVhESO9BQX2GOC1Ex9ZbJPKi9Z3hWGP5qW4wInpqfzqz+rd
 Q4421qVhKPdOTQwVOBs72R/J7ua5DnKkEeLxA6Br77yp/Cfi9S76dhjiDcDw5/mIink4
 XVb4U8tUJ507sZA4mlfvJ+/tS5GLxbAMUaop3wOK0A0ZM8JUgm9wQoCorl/Wnv5YReEM
 +k5/FuRAIJY9HUdqDtFTue1Eh7eAg3ukJ5meNtNTpdlqfu5wnzhRFyujo8kTBPl3iLhd
 xlcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=tnt/torS5GIdTgqngWRWdNvPaQlp0a+hbcfz+C+q7aw=;
 b=qRl6FrPGehAksQLpuj3EjIYO0ijBmHLuaJ97rKwkNM2/lyABX/ZE9kwzKo6+47i2Vt
 y3MENo/8pdwvmOtjvKMLuAXra3VNap2owALTx3Z2cBwJ6FQJ361JWqpzY5qui1cnKb/t
 i8TtCKqCrglzCy/J6TUhThUkrokHUClWTd7FXrn5rAOhHvevlHp0ZsANv5gZM5vE8GtH
 RGLkUHhHqzYgZRTJSpzIixrjGjxs6fkEgEV5HL+EJQsfQ4fL5rC9HfP2WHFcp7cqAilv
 YLEAoybNE9vFdDqZcNlyGfDroH+xfbh1caU8BHdJTGw+8zHjVpX1zBZfv4inwHNzCUbs
 KYpg==
X-Gm-Message-State: AOAM533p6OWXccaxB/qtwHLsXODuZ9TaWtILn5IC/qBCjyZQzygwHAit
 6IHuD/ofQ+c+qwvq70Ti4g==
X-Google-Smtp-Source: ABdhPJwpyKWCq5/s5tL6GH74AMIGPh1SZK3UVeYYxN6N/zYhEkMygvP4IxkzlV8sZ1+abKJdC0QniA==
X-Received: by 2002:a9d:6c19:: with SMTP id f25mr9854979otq.25.1600097981202; 
 Mon, 14 Sep 2020 08:39:41 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id m184sm3783748oig.29.2020.09.14.08.39.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Sep 2020 08:39:40 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:14a:4bc7:7a13:5af3])
 by serve.minyard.net (Postfix) with ESMTPSA id 06FDB180056;
 Mon, 14 Sep 2020 15:39:39 +0000 (UTC)
Date: Mon, 14 Sep 2020 10:39:37 -0500
From: Corey Minyard <minyard@acm.org>
To: Xianting Tian <tian.xianting@h3c.com>
Message-ID: <20200914153937.GL15602@minyard.net>
References: <20200914081313.31450-1-tian.xianting@h3c.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200914081313.31450-1-tian.xianting@h3c.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: h3c.com]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kHqa2-009L0r-U2
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
Reply-To: minyard@acm.org
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Sep 14, 2020 at 04:13:13PM +0800, Xianting Tian wrote:
> We can't get bmc's device id with low probability when loading ipmi driver,
> it caused bmc device register failed. When this issue happened, we got
> below kernel printks:

This patch is moving in the right direction.  For the final patch(es), I
can clean up the english grammar issues, since that's not your native
language.  A few comments:

> 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: IPMI message handler: device id demangle failed: -22

You are having the same issue in the ipmi_si code.  It's choosing
defaults, but that's not ideal.  You probably need to handle this
there, too, in a separate patch.

Can you create a separate patch to add a dev_warn() to the BT code when
it returns IPMI_NOT_IN_MY_STATE_ERR, like I asked previously?  And print
the current state when it happens.  That way we know where this issue is
coming from and possibly fix the state machine.  I'm thinking that the
BMC is just not responding, but I'd like to be sure.

Other comments inline...

> 	[Wed Sep  9 19:52:03 2020] IPMI BT: using default values
> 	[Wed Sep  9 19:52:03 2020] IPMI BT: req2rsp=5 secs retries=2
> 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: Unable to get the device id: -5
> 	[Wed Sep  9 19:52:04 2020] ipmi_si IPI0001:00: Unable to register device: error -5
> 
> When this issue happened, we want to manually unload the driver and try to
> load it again, but it can't be unloaded by 'rmmod' as it is already 'in use'.
> 
> We add below 'printk' in handle_one_recv_msg(), when this issue happened,
> the msg we received is "Recv: 1c 01 d5", which means the data_len is 1,
> data[0] is 0xd5(completion code), which means "bmc cannot execute command.
> Command, or request parameter(s), not supported in present state".
> 	Debug code:
> 	static int handle_one_recv_msg(struct ipmi_smi *intf,
>                                struct ipmi_smi_msg *msg) {
>         	printk("Recv: %*ph\n", msg->rsp_size, msg->rsp);
> 		... ...
> 	}
> Then in ipmi_demangle_device_id(), it returned '-EINVAL' as 'data_len < 7'
> and 'data[0] != 0'.
> 
> We used this patch to retry to get device id when error happen, we
> reproduced this issue again and the retry succeed on the first retry, we
> finally got the correct msg and then all is ok:
> Recv: 1c 01 00 01 81 05 84 02 af db 07 00 01 00 b9 00 10 00
> 
> So use retry machanism in this patch to give bmc more opportunity to
> correctly response kernel when we received specific completion code.
> 
> Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 29 +++++++++++++++++++++++++----
>  include/uapi/linux/ipmi_msgdefs.h   |  2 ++
>  2 files changed, 27 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b2..07d5be2cd 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -34,6 +34,7 @@
>  #include <linux/uuid.h>
>  #include <linux/nospec.h>
>  #include <linux/vmalloc.h>
> +#include <linux/delay.h>
>  
>  #define IPMI_DRIVER_VERSION "39.2"
>  
> @@ -60,6 +61,9 @@ enum ipmi_panic_event_op {
>  #else
>  #define IPMI_PANIC_DEFAULT IPMI_SEND_PANIC_EVENT_NONE
>  #endif
> +
> +#define GET_DEVICE_ID_MAX_RETRY	5
> +
>  static enum ipmi_panic_event_op ipmi_send_panic_event = IPMI_PANIC_DEFAULT;
>  
>  static int panic_op_write_handler(const char *val,
> @@ -317,6 +321,7 @@ struct bmc_device {
>  	int                    dyn_guid_set;
>  	struct kref	       usecount;
>  	struct work_struct     remove_work;
> +	char		       cc; /* completion code */
>  };
>  #define to_bmc_device(x) container_of((x), struct bmc_device, pdev.dev)
>  
> @@ -2381,6 +2386,8 @@ static void bmc_device_id_handler(struct ipmi_smi *intf,
>  			msg->msg.data, msg->msg.data_len, &intf->bmc->fetch_id);
>  	if (rv) {
>  		dev_warn(intf->si_dev, "device id demangle failed: %d\n", rv);
> +		/* record completion code when error */
> +		intf->bmc->cc = msg->msg.data[0];
>  		intf->bmc->dyn_id_set = 0;
>  	} else {
>  		/*
> @@ -2426,19 +2433,34 @@ send_get_device_id_cmd(struct ipmi_smi *intf)
>  static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  {
>  	int rv;
> -
> -	bmc->dyn_id_set = 2;
> +	unsigned int retry_count = 0;

You need to initialize bmc->cc to 0 here.

>  
>  	intf->null_user_handler = bmc_device_id_handler;
>  
> +retry:
> +	bmc->dyn_id_set = 2;
> +
>  	rv = send_get_device_id_cmd(intf);
>  	if (rv)
>  		return rv;
>  
>  	wait_event(intf->waitq, bmc->dyn_id_set != 2);
>  
> -	if (!bmc->dyn_id_set)
> +	if (!bmc->dyn_id_set) {
> +		if ((bmc->cc == IPMI_NOT_IN_MY_STATE_ERR
> +		     || bmc->cc == IPMI_NOT_IN_MY_STATE_ERR_1
> +		     || bmc->cc == IPMI_NOT_IN_MY_STATE_ERR_2)
> +		     && ++retry_count <= GET_DEVICE_ID_MAX_RETRY) {
> +			msleep(500);
> +			dev_warn(intf->si_dev,
> +				"retry to get bmc device id as completion code 0x%x\n",
> +				bmc->cc);
> +			bmc->cc = 0;
> +			goto retry;
> +		}
> +
>  		rv = -EIO; /* Something went wrong in the fetch. */
> +	}
>  
>  	/* dyn_id_set makes the id data available. */
>  	smp_rmb();
> @@ -3245,7 +3267,6 @@ channel_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>  		/* It's the one we want */
>  		if (msg->msg.data[0] != 0) {
>  			/* Got an error from the channel, just go on. */
> -
>  			if (msg->msg.data[0] == IPMI_INVALID_COMMAND_ERR) {
>  				/*
>  				 * If the MC does not support this
> diff --git a/include/uapi/linux/ipmi_msgdefs.h b/include/uapi/linux/ipmi_msgdefs.h
> index c2b23a9fd..46a0df434 100644
> --- a/include/uapi/linux/ipmi_msgdefs.h
> +++ b/include/uapi/linux/ipmi_msgdefs.h
> @@ -70,6 +70,8 @@
>  #define IPMI_REQ_LEN_INVALID_ERR	0xc7
>  #define IPMI_REQ_LEN_EXCEEDED_ERR	0xc8
>  #define IPMI_NOT_IN_MY_STATE_ERR	0xd5	/* IPMI 2.0 */
> +#define IPMI_NOT_IN_MY_STATE_ERR_1	0xd1

For the above name, can you use IPMI_DEVICE_IN_FW_UPDATE_ERR to match
the spec?

> +#define IPMI_NOT_IN_MY_STATE_ERR_2	0xd2

For the above name, can you use IPMI_DEVICE_IN_INIT_ERR to match the
spec?

Thanks,

-corey

>  #define IPMI_LOST_ARBITRATION_ERR	0x81
>  #define IPMI_BUS_ERR			0x82
>  #define IPMI_NAK_ON_WRITE_ERR		0x83
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
