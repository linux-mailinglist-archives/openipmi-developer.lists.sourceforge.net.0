Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 014AB246624
	for <lists+openipmi-developer@lfdr.de>; Mon, 17 Aug 2020 14:15:48 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1k7e38-0003UH-W0; Mon, 17 Aug 2020 12:15:38 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>)
 id 1k7e32-0003TY-Dp; Mon, 17 Aug 2020 12:15:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=; b=P5dzBKSZsYOaVmtpXzrWigXuMW
 UnM/NuB5vlfOu3FI2Bu7HXvON3IAjY1DKqJqDlw3kiqFPMNBrmNUMTLQi1Vw0aQrosiG+v5PdOa0L
 +Kw0TIIYF5C2D42tOs3Iv+r+sZXTm8VgW0JDpk77b7MsH3OORm3zSdR6M6kn8jrSWZW4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=; b=ClhW1uOUeqtz4cGexiScW3vnWL
 MNJ8bicafaK6Ohs6x2nGLAw2kmupwJcsoLIjQHw+AmQHzQvNMj0x/3oVRmgohQ4i9jUDoCT8alO5k
 ZkUkXK1xeqHY7sbAmGRgwhnrpur3RuQpBKie5yyej8mwo+++UU7ht1v6U/Ao0AcVBaWc=;
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1k7e30-00AFAG-5B; Mon, 17 Aug 2020 12:15:31 +0000
Received: by mail-ot1-f68.google.com with SMTP id h16so13200109oti.7;
 Mon, 17 Aug 2020 05:15:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=;
 b=KQ04CZsRLDiNek1Hq6BgWjnM11s2YmAiDjqEVGZ1TB6F4rCxf78rX4jbJ0CzT3vabY
 xrX4JEoDeIRQkHsLGU1+gcp8w5QWNQcEyBm3wuShwRxBfydODrCE4cRQV+E7WBzKB44r
 nItPN0459qY5GQ/vDZ0NyzENyHv44GovdpKFSl4hiVWaOB2zEjXEpxHT00gUoMHFf0Aj
 T3icpJ/3pjaEvvW0UMNkSAFYHa1jbJwCP0vrwjpIL/uytt4RzckTqwRdvf5FUeTb7MGh
 bx2bsLCHbfEXkOD8bVoKRj4Mx5bjsmewyyPYaN17ohutCV8HXhFZHeJnJ+WLeKJ12UV0
 gebw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=HJ0m+miDorhqglJ9JrK44iTq3d9R15TmbjC29old1f8=;
 b=rwWj2to8A+WBSeCWZ+qc9dlyNp1Qx+9B6ahliopPFDwmV5PFTxfcOGbhJ2JrbLs22/
 Dco8FHj/5G21xsB9kHGqxtopeYEGzcg4aL+QDtHK0mJD99CrobHLupUePfd22e62iNIE
 M71YwUgXU2FYmtM8mMrPb8kpSo6Fsg1r65NCTf4ywwoi0EW0k5Y7gFm+dYE4xBTRDR8w
 3nNOhKAfIAi6P1bSwvc+SDQ7ZfmnbTYIFDBOcPdsTGWQo95QWPkLptyc5rwSq/9rscZB
 BIcAFKIHD5+YRg4VEK5JKPjQR37uBve62XYa9e3F3oVhczdd5XbucVVvMT+kIs3O3PAK
 p8/g==
X-Gm-Message-State: AOAM530CJa/0VhtQit3kYnxVfgF4VW7DJr6SLUNJt675uvvsgNBIMg0f
 v8kMxH8VFsq6qb1WPoeuJA==
X-Google-Smtp-Source: ABdhPJy4QfXEUBbWmVDtAzyWm157/pCVwSVPWhR0mJ058Fnm0lC/IAUOoEeTjBc9itF58Cw5xKVyqA==
X-Received: by 2002:a05:6830:1346:: with SMTP id
 r6mr11152982otq.325.1597666517323; 
 Mon, 17 Aug 2020 05:15:17 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
 by smtp.gmail.com with ESMTPSA id l17sm3384049otn.2.2020.08.17.05.15.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 17 Aug 2020 05:15:16 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id 846E11800D4;
 Mon, 17 Aug 2020 12:15:15 +0000 (UTC)
Date: Mon, 17 Aug 2020 07:15:14 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen Pais <allen.cryptic@gmail.com>
Message-ID: <20200817121514.GE2865@minyard.net>
References: <20200817091617.28119-1-allen.cryptic@gmail.com>
 <20200817091617.28119-3-allen.cryptic@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200817091617.28119-3-allen.cryptic@gmail.com>
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
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1k7e30-00AFAG-5B
Subject: Re: [Openipmi-developer] [PATCH] char: ipmi: convert tasklets to
 use new tasklet_setup() API
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
Cc: ulf.hansson@linaro.org, linux-atm-general@lists.sourceforge.net,
 manohar.vanga@gmail.com, airlied@linux.ie, Allen Pais <allen.lkml@gmail.com>,
 linux-hyperv@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, James.Bottomley@HansenPartnership.com,
 kys@microsoft.com, anton.ivanov@cambridgegreys.com, devel@driverdev.osuosl.org,
 linux-s390@vger.kernel.org, linux1394-devel@lists.sourceforge.net,
 maximlevitsky@gmail.com, richard@nod.at, deller@gmx.de,
 jassisinghbrar@gmail.com, 3chas3@gmail.com, intel-gfx@lists.freedesktop.org,
 kuba@kernel.org, mporter@kernel.crashing.org, jdike@addtoit.com,
 keescook@chromium.org, oakad@yahoo.com, s.hauer@pengutronix.de,
 linux-input@vger.kernel.org, linux-um@lists.infradead.org,
 linux-block@vger.kernel.org, broonie@kernel.org,
 openipmi-developer@lists.sourceforge.net, mitch@sfgoth.com,
 linux-arm-kernel@lists.infradead.org, axboe@kernel.dk,
 linux-parisc@vger.kernel.org, netdev@vger.kernel.org, martyn@welchs.me.uk,
 dmitry.torokhov@gmail.com, linux-mmc@vger.kernel.org, sre@kernel.org,
 linux-spi@vger.kernel.org, alex.bou9@gmail.com, stefanr@s5r6.in-berlin.de,
 daniel@ffwll.ch, linux-ntb@googlegroups.com,
 Romain Perier <romain.perier@gmail.com>, shawnguo@kernel.org,
 davem@davemloft.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Aug 17, 2020 at 02:45:57PM +0530, Allen Pais wrote:
> From: Allen Pais <allen.lkml@gmail.com>
> 
> In preparation for unconditionally passing the
> struct tasklet_struct pointer to all tasklet
> callbacks, switch to using the new tasklet_setup()
> and from_tasklet() to pass the tasklet pointer explicitly.
> 
> Signed-off-by: Romain Perier <romain.perier@gmail.com>
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>

This looks good to me.

Reviewed-by: Corey Minyard <cminyard@mvista.com>

Are you planning to push this, or do you want me to take it?  If you
want me to take it, what is the urgency?

-corey

> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++-------
>  1 file changed, 6 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b24ea..e1814b6a1225 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -39,7 +39,7 @@
>  
>  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
>  static int ipmi_init_msghandler(void);
> -static void smi_recv_tasklet(unsigned long);
> +static void smi_recv_tasklet(struct tasklet_struct *t);
>  static void handle_new_recv_msgs(struct ipmi_smi *intf);
>  static void need_waiter(struct ipmi_smi *intf);
>  static int handle_one_recv_msg(struct ipmi_smi *intf,
> @@ -3430,9 +3430,8 @@ int ipmi_add_smi(struct module         *owner,
>  	intf->curr_seq = 0;
>  	spin_lock_init(&intf->waiting_rcv_msgs_lock);
>  	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> -	tasklet_init(&intf->recv_tasklet,
> -		     smi_recv_tasklet,
> -		     (unsigned long) intf);
> +	tasklet_setup(&intf->recv_tasklet,
> +		     smi_recv_tasklet);
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
>  	spin_lock_init(&intf->xmit_msgs_lock);
>  	INIT_LIST_HEAD(&intf->xmit_msgs);
> @@ -4467,10 +4466,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  	}
>  }
>  
> -static void smi_recv_tasklet(unsigned long val)
> +static void smi_recv_tasklet(struct tasklet_struct *t)
>  {
>  	unsigned long flags = 0; /* keep us warning-free. */
> -	struct ipmi_smi *intf = (struct ipmi_smi *) val;
> +	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
>  
> @@ -4542,7 +4541,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>  
>  	if (run_to_completion)
> -		smi_recv_tasklet((unsigned long) intf);
> +		smi_recv_tasklet(&intf->recv_tasklet);
>  	else
>  		tasklet_schedule(&intf->recv_tasklet);
>  }
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
