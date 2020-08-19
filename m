Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A44E249CE2
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Aug 2020 13:57:41 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k8Mio-0005xI-8V; Wed, 19 Aug 2020 11:57:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1k8Min-0005xC-Qw
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 11:57:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y4Jy5IuQBTuviczT8dmYRL2qT84PNbSfEJ1OCZz2dZo=; b=G3aiDfGGYAC8NJ3DMuwj+8qurm
 pqHQHfV3qZUcA700o4RVNt5BvlTKfvjQAnW/pQOxwbKtKrulySkm8BIEOxIH07FJt6eFLyMt+j0/d
 bfQjEMGK1FSb6mk696ZLSdqyi6tRzkkyG/5Axh5KMXXew8ZXZdybHTSstPUGlt/R40JU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y4Jy5IuQBTuviczT8dmYRL2qT84PNbSfEJ1OCZz2dZo=; b=kuFmjm/4aGPwuTRmzS4/oCzQlV
 AgjwXg4Q8XF5UfXtModgrHLrT8sedLtSbNe9zJtsC20nps3CiDTJCHYb66QAcpx5l3zr7wW4vnqHu
 6CMSS5TYrLhbgRtOVs68ndevZV88u1T+tBZ2xJe0+K9Xjz9zJdq4TbXs0mE83gXpSzkI=;
Received: from mail-oo1-f67.google.com ([209.85.161.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k8Mik-001Ihn-13
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Aug 2020 11:57:37 +0000
Received: by mail-oo1-f67.google.com with SMTP id u28so4804727ooe.12
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 19 Aug 2020 04:57:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Y4Jy5IuQBTuviczT8dmYRL2qT84PNbSfEJ1OCZz2dZo=;
 b=WlkxZ+AqNPeFsTGLArhXiqZ83c3eFEe4rAgyN4zYkI2zaAxaqdXhvYAF1kLI4MEjNU
 Vk3ybPwGYFDX0bd0p1qoitAg//S9ZH8Q4qa9XXVE310WW917HhD8Qc+b0sr0jAabGMMn
 l+40SxdTK1JpqXP4uVhzoeu4hdTIN3Ec+DdJr0Q/mw+fmRrpLv3aam755eN51O2pGZLS
 shovtnsOB2n0ZKu71bJPDssIfbJT6x15Abu/t35ByeSMugSpC/pE0w+BPgLeOC9vmWHw
 kI7TbLUcpJ2NZ4WYZ2RceCM4ZkqFznknoXd5S3xF1kU/oxmWHma5ZtaqQW/PUaVdORdZ
 w+nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=Y4Jy5IuQBTuviczT8dmYRL2qT84PNbSfEJ1OCZz2dZo=;
 b=Mijv7YbZvyHF1wbxKqLjHNPQQNyxkI/6ftPRYo6oxY+Xmfcby+fVIp+uV+YmtAH/HV
 3LHlKFJ7Uj+XFIzHra5uuHgLPnaxvNpyRoIdvLLLqoxNjd/B0C3EiDRVBh1x+hUwrPAy
 BCkj96GYUYi+atLu+wnOkbVce0Ywl7YtgmI9QbsssVJC50/DjeU+7uNmugWPizWi/LIV
 zE4U6UpxMmxXF41l8Y0wZeAlZg8U1inY3rj4vpHe47q1IVqhcHw7A5kSeCIch4eFfMt+
 HTJLNAJIl3USxOSkUN/2GJhfLeZFtQWIOWSbRO9qkj2E/3PCipBqcPYLMunZ3H9pPjgn
 1BAg==
X-Gm-Message-State: AOAM532+KRkTw7GaVgMGBKfNgfEkiLMsDFQzkw1tqKdt0PBE69ALmYW7
 dKIU1hnA6uMImQv5knVzGg==
X-Google-Smtp-Source: ABdhPJzsqzox7RvAX2g1aHgKhhARQRK0pat7YfJ1TTVYuIMzx44H4ie4WUypHNcQOj8s9ih030y1Og==
X-Received: by 2002:a4a:6c13:: with SMTP id q19mr18638759ooc.11.1597838241079; 
 Wed, 19 Aug 2020 04:57:21 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
 by smtp.gmail.com with ESMTPSA id x11sm4826113oot.0.2020.08.19.04.57.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 19 Aug 2020 04:57:20 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 9E88B1801D9;
 Wed, 19 Aug 2020 11:57:18 +0000 (UTC)
Date: Wed, 19 Aug 2020 06:57:17 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20200819115717.GJ2842@minyard.net>
References: <20200819101439.74566-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200819101439.74566-1-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.67 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.67 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.3 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1k8Mik-001Ihn-13
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: convert tasklets to use
 new tasklet_setup() API
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 openipmi-developer@lists.sourceforge.net, Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I already have a patch for this from Allen Pais that is in the next
tree.

Thanks,

-corey

On Wed, Aug 19, 2020 at 01:14:39PM +0300, Andy Shevchenko wrote:
> In preparation for unconditionally passing the struct tasklet_struct
> pointer to all tasklet callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b24ea..20821194292b 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3430,9 +3430,7 @@ int ipmi_add_smi(struct module         *owner,
>  	intf->curr_seq = 0;
>  	spin_lock_init(&intf->waiting_rcv_msgs_lock);
>  	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> -	tasklet_init(&intf->recv_tasklet,
> -		     smi_recv_tasklet,
> -		     (unsigned long) intf);
> +	tasklet_setup(&intf->recv_tasklet, smi_recv_tasklet);
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
>  	spin_lock_init(&intf->xmit_msgs_lock);
>  	INIT_LIST_HEAD(&intf->xmit_msgs);
> @@ -4467,10 +4465,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  	}
>  }
>  
> -static void smi_recv_tasklet(unsigned long val)
> +static void smi_recv_tasklet(struct tasklet_struct *t)
>  {
> +	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
>  	unsigned long flags = 0; /* keep us warning-free. */
> -	struct ipmi_smi *intf = (struct ipmi_smi *) val;
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
>  
> -- 
> 2.28.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
