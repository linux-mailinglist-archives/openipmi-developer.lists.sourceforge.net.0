Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E46E267F85
	for <lists+openipmi-developer@lfdr.de>; Sun, 13 Sep 2020 14:39:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kHRIJ-0003JE-4f; Sun, 13 Sep 2020 12:39:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kHRIG-0003J5-Dg
 for openipmi-developer@lists.sourceforge.net; Sun, 13 Sep 2020 12:39:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=l3WXaGdP8SgXL6VCI8rD1lbY8X7+MJhgv01RyK8uTDE=; b=Du7Tk5omabtn2+xmx/uVaMHFd5
 9oyRZQ8tcFIrsZ6GeD0Y5ErMciKhn58xKeQZM1SrCH6fMKyXBYuhM1Pg2k6s8to/N1Z14Gvf2hAXU
 e47wztYbGLN0q5BtI6bicRb1dhyqUAUW6teT4LKTHnDuFxicb0iGGGLwQzylzSts+ALc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=l3WXaGdP8SgXL6VCI8rD1lbY8X7+MJhgv01RyK8uTDE=; b=TWMbWtOgGYZ7tZS/DTBJmb8P9i
 9Tz8dhiHE20BSjYlexn/BaJAx5btGVkgGSYrfaL6w1m4s19teNxgP13naU5GPSskZdDQV7YeQwWFA
 Zs1uZtizjBzrb1q7XwzYLeIK6H3PftbBeIBe+A0kH7w5txYma/Wf95aDnKJ0E1j8ZtiM=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kHRIB-0076pQ-E4
 for openipmi-developer@lists.sourceforge.net; Sun, 13 Sep 2020 12:39:43 +0000
Received: by mail-oi1-f194.google.com with SMTP id a3so14758483oib.4
 for <openipmi-developer@lists.sourceforge.net>;
 Sun, 13 Sep 2020 05:39:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l3WXaGdP8SgXL6VCI8rD1lbY8X7+MJhgv01RyK8uTDE=;
 b=p5+1D6mg1ApenrzHMzvr04hfK1qUgWGB3Tg9DLvHl9k67RwzlnZZifJqsKlJNxmSZ9
 cc3T6cFH42iv2brYTpeR/bsLzTTe3qE8w97vwWbeqjBnYY7l0gowQor6ml30Nc25Q6pS
 eSMiAHsl1Q9aT+zCyOqECTKCU7lhv+Xb1+IMk1YMo0LeBuAIcjxme3uM668XXU47Er9j
 dZBrnZ0xsqZgLZqHH7T4HfgYtms8aVNatnUEMPiGxBPrYMl4Z1Mbh9IW9f3mTefse9dW
 mj+6aKEK8/nSAM2EzJFCuVwfUXfPlT1+PagXN5LCi6Cqm02xs8fnb+uXKDGGHCA3Vz/i
 52Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=l3WXaGdP8SgXL6VCI8rD1lbY8X7+MJhgv01RyK8uTDE=;
 b=Kumqht4zlHzv51l0VhjR5EqIumLByDWFGmLZrxMsYBj7mA3/ScdZeAPDkCUWMefLcT
 Fs94zp8KwLenE/9XDqKuXkmRwcE743c62ByvOaWq/hGBBJw5NIcA58vixYsCNfnG2NOB
 TsFrXeZJFaoPzhkDtYkMdHbQasjI5byNC/Nuz3IVP5pa4XDSWHd+ciqbZ47ZjW+dM0Tj
 9cYiI+R1F4u/9P+vn/HcU6Q9a09BD3K3YxBkwWN4YnHpHomfcnFALpALycYormFeeB6I
 CEE67JTikwRa//E6xWYzYlS2nhqOgg9dN5UoqFRhkwhLIm9nX4mPQfJ4D3HHct4T+Y0/
 3o5w==
X-Gm-Message-State: AOAM531bspKBEz4RbRelLawI/8pQvkmNUAT9J+amnoKFKzWWCY7EZu0b
 bA1VIK5LX9xrcnQ7rUmeOw==
X-Google-Smtp-Source: ABdhPJwoWPBCa2RxpIiOjqfQYMaTBJQTMz0eDcy/1DqzYWqRVHxuHqGPDdUD8kmuqvDxQavtMNO62g==
X-Received: by 2002:a05:6808:287:: with SMTP id
 z7mr6377916oic.99.1600000773754; 
 Sun, 13 Sep 2020 05:39:33 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id e7sm1570012otk.59.2020.09.13.05.39.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Sep 2020 05:39:32 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ecd3:d2ae:8b57:1a08])
 by serve.minyard.net (Postfix) with ESMTPSA id D397F180056;
 Sun, 13 Sep 2020 12:39:31 +0000 (UTC)
Date: Sun, 13 Sep 2020 07:39:30 -0500
From: Corey Minyard <minyard@acm.org>
To: Xianting Tian <tian.xianting@h3c.com>
Message-ID: <20200913123930.GH15602@minyard.net>
References: <20200913120203.3368-1-tian.xianting@h3c.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200913120203.3368-1-tian.xianting@h3c.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: h3c.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kHRIB-0076pQ-E4
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Sun, Sep 13, 2020 at 08:02:03PM +0800, Xianting Tian wrote:
> We can't get bmc's device id with low probability when loading ipmi driver,
> it caused bmc device register failed. This issue may caused by bad lpc
> signal quality. When this issue happened, we got below kernel printks:
> 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: IPMI message handler: device id demangle failed: -22
> 	[Wed Sep  9 19:52:03 2020] IPMI BT: using default values
> 	[Wed Sep  9 19:52:03 2020] IPMI BT: req2rsp=5 secs retries=2
> 	[Wed Sep  9 19:52:03 2020] ipmi_si IPI0001:00: Unable to get the device id: -5
> 	[Wed Sep  9 19:52:04 2020] ipmi_si IPI0001:00: Unable to register device: error -5
> 
> When this issue happened, we want to manually unload the driver and try to
> load it again, but it can't be unloaded by 'rmmod' as it is already 'in use'.

I'm not sure this patch is a good idea; it would cause a long boot delay
in situations where there really isn't a BMC out there.  Yes, it
happens.

You don't have to reload the driver to add a device, though.  You can
hot-add devices using /sys/modules/ipmi_si/parameters/hotmod.  Look in
Documentation/driver-api/ipmi.rst for details.

Does that work for you?

-corey

> 
> We add below 'printk' in handle_one_recv_msg(), when this issue happened,
> the msg we received is "Recv: 1c 01 d5", which means the data_len is 1,
> data[0] is 0xd5.
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
> correctly response kernel.
> 
> Signed-off-by: Xianting Tian <tian.xianting@h3c.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 17 ++++++++++++++---
>  1 file changed, 14 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b2..bfb2de77a 100644
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
> @@ -2426,19 +2430,26 @@ send_get_device_id_cmd(struct ipmi_smi *intf)
>  static int __get_device_id(struct ipmi_smi *intf, struct bmc_device *bmc)
>  {
>  	int rv;
> -
> -	bmc->dyn_id_set = 2;
> +	unsigned int retry_count = 0;
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
> +		msleep(1000);
> +		if (++retry_count <= GET_DEVICE_ID_MAX_RETRY)
> +			goto retry;
> +
>  		rv = -EIO; /* Something went wrong in the fetch. */
> +	}
>  
>  	/* dyn_id_set makes the id data available. */
>  	smp_rmb();
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
