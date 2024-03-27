Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F96688ED58
	for <lists+openipmi-developer@lfdr.de>; Wed, 27 Mar 2024 18:58:50 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1rpXXr-0007vW-0q;
	Wed, 27 Mar 2024 17:58:39 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1rpXXp-0007vQ-R1
 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 17:58:37 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=yWR/88ZuStiYrDMS5UWD0VLDt0J6Sqyii5LmdWwCGKc=; b=jKq2ZMlGFilgq1MfLhdcZGGDUA
 RuqVkcHk/JvLQ8BY0LQU06JE7q3RvkaqWzkK0YZzTn7ohtAe6xt7Sejj8/JNol0aK5+3i1KvH+Ywm
 nLj5SBdfwwGfakpYkeOETw+myOkKX8ol7dNztWtzwodgSHbK9h8BygqfAyQb38UzCCnU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=yWR/88ZuStiYrDMS5UWD0VLDt0J6Sqyii5LmdWwCGKc=; b=Ca+cQuOdwEUzfXI0dIxY378HWJ
 8JEmwX3jZetU8XPPdGr6Ybf98Fi1og4tY80PtvSvQEYpr7EQAZcJ79J9//3BIFMhgdwx1B4xg458u
 5feCL5hx8EXjE0rT3d1S7M0wTN1CV+NFMgoDwKWj3ArAq+ItNsHIvMadutHvzcW5TQWo=;
Received: from mail-oi1-f169.google.com ([209.85.167.169])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1rpXXo-0003Gb-R2 for openipmi-developer@lists.sourceforge.net;
 Wed, 27 Mar 2024 17:58:37 +0000
Received: by mail-oi1-f169.google.com with SMTP id
 5614622812f47-3c393b5f0e3so68124b6e.1
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 27 Mar 2024 10:58:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1711562306; x=1712167106; darn=lists.sourceforge.net;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=yWR/88ZuStiYrDMS5UWD0VLDt0J6Sqyii5LmdWwCGKc=;
 b=m+9eB5RDPGBf5DNe5K/lCNfQwZT4wULRq77uQjBnsVY0x8dFaO6x9NKiuKWg/MfpU7
 xI0ohBe31GqvVIkj+5w4IvzYFtbp3I+BahOxXzMaaTxMFVgM6LexhSFBsTtkPlgZHsdh
 aYq+ogmZM0TBe4tJ1Q7HyJegNLPnxp7z8u9VDoiNb/4w191g+G30ESKbLJ0rXVZUfQVk
 LT4a8SlgHkXOSeqkpuESd7ZRv4Ek8rD+jydfxoJapA1uG9X83ANuOng/E4pXvfK0Ke4F
 wJTwjTzZgxwGM3orKa6tIyV7V0qZAMvgtXUDg3jd9WDn1qYYz9t5DUczs6OuQR7Q6N8G
 XgNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1711562306; x=1712167106;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=yWR/88ZuStiYrDMS5UWD0VLDt0J6Sqyii5LmdWwCGKc=;
 b=gvroomERK4P58bbbwhRMmPDg0kBGXW39xgbTTuLfKyxqDi027Bc1oD+pVg8SNBAPo6
 otZ7tCm+4+Cb0AUfYVnT49oMIoISQNyAI3hYTzyO6Z2A2sT8asotU+zVJQHzwQp1I76V
 Ev35qMpQF3T+89zYYkyif6r4GFmz6prcZFPIDB6+MaT+zrV2N7QVUUzV317gETYRz6DC
 8haxelTWOPp/8dR9/oKoYrlTKODG3rGXG6npYvaQnCvuzDNDgK2qvFS51Ay2QJxCUj6R
 205dk6WvSVF+RgojNs8zGKn5n0m5Pk+NwnaVSNTttaAnqubHyKZk3NX58E787SARecL4
 3BEA==
X-Forwarded-Encrypted: i=1;
 AJvYcCWzYM2nt8NWWucUmJnXhl5191TYyapnaooLs6bqEIopgXf0ARpWM3xRSmsaqtIr6aU/2pbJ4lq9QEuEM7XoyGTAov2thFwzb4i7HG83yc2lYDtDDVYvYiPL
X-Gm-Message-State: AOJu0YwbIzMKwOa5KEvX5d/aDQCDFCYz2mrLKL1XdXNnHx9Nu0ZnKh4Y
 u4cR4sj71HT7Lv1f25yP1/3uc7rDxWYbFDmMAlHSGXhYzQaeejo=
X-Google-Smtp-Source: AGHT+IGIuqcpUfq3tRIl3Tp+ivSdarRw1h1Pz+NBzSyS6B+Wv1klEWD1UlLYSK6t5b6FwD/aGF7AqA==
X-Received: by 2002:a05:6808:16a8:b0:3c3:7e7a:8236 with SMTP id
 bb40-20020a05680816a800b003c37e7a8236mr846136oib.18.1711562306195; 
 Wed, 27 Mar 2024 10:58:26 -0700 (PDT)
Received: from serve.minyard.net ([47.184.181.2])
 by smtp.gmail.com with ESMTPSA id
 bl16-20020a056808309000b003c3ca856452sm1579224oib.55.2024.03.27.10.58.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 27 Mar 2024 10:58:25 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:ac74:4d5d:21e4:a88a])
 by serve.minyard.net (Postfix) with ESMTPSA id 6CA7D1800B9;
 Wed, 27 Mar 2024 17:58:24 +0000 (UTC)
Date: Wed, 27 Mar 2024 12:58:23 -0500
From: Corey Minyard <minyard@acm.org>
To: Allen Pais <apais@linux.microsoft.com>
Message-ID: <ZgRePyo2zC4A1Fp4@mail.minyard.net>
References: <20240327160314.9982-1-apais@linux.microsoft.com>
 <20240327160314.9982-7-apais@linux.microsoft.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20240327160314.9982-7-apais@linux.microsoft.com>
X-Spam-Score: 0.2 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Mar 27, 2024 at 04:03:11PM +0000, Allen Pais wrote:
 > The only generic interface to execute asynchronously in the BH context
 is > tasklet; however, it's marked deprecated and has some design f [...] 
 Content analysis details:   (0.2 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.169 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.169 listed in wl.mailspike.net]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1rpXXo-0003Gb-R2
Subject: Re: [Openipmi-developer] [PATCH 6/9] ipmi: Convert from tasklet to
 BH workqueue
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
Cc: imx@lists.linux.dev, ulf.hansson@linaro.org, oneukum@suse.com,
 duncan.sands@free.fr, hayashi.kunihiko@socionext.com,
 linux-mmc@vger.kernel.org, aubin.constans@microchip.com,
 linus.walleij@linaro.org, Frank.Li@nxp.com, linux-hyperv@vger.kernel.org,
 linux-usb@vger.kernel.org, HaraldWelte@viatech.com, paul@crapouillou.net,
 linux-tegra@vger.kernel.org, netdev@vger.kernel.org,
 maintainers@bluecherrydvr.com, peter.ujfalusi@gmail.com,
 manivannan.sadhasivam@linaro.org, linux-riscv@lists.infradead.org,
 kys@microsoft.com, robert.jarzmik@free.fr, haijie1@huawei.com,
 linux-renesas-soc@vger.kernel.org, wei.liu@kernel.org,
 linux-omap@vger.kernel.org, florian.fainelli@broadcom.com,
 linux-rdma@vger.kernel.org, vireshk@kernel.org, jassisinghbrar@gmail.com,
 decui@microsoft.com, wangzhou1@hisilicon.com, jernej.skrabec@gmail.com,
 jh80.chung@samsung.com, zw@zh-kernel.org, wens@csie.org,
 stern@rowland.harvard.edu, linux-arm-msm@vger.kernel.org, orsonzhai@gmail.com,
 pierre@ossman.eu, linux-mips@vger.kernel.org, Eugeniy.Paltsev@synopsys.com,
 patrice.chotard@foss.st.com, asahi@lists.linux.dev, brucechang@via.com.tw,
 keescook@chromium.org, oakad@yahoo.com, sven@svenpeter.dev, rjui@broadcom.com,
 s.hauer@pengutronix.de, sean.wang@mediatek.com,
 linux-actions@lists.infradead.org, linuxppc-dev@lists.ozlabs.org,
 haojian.zhuang@gmail.com, mirq-linux@rere.qmqm.pl, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, linux-rpi-kernel@lists.infradead.org,
 baolin.wang@linux.alibaba.com, matthias.bgg@gmail.com,
 openipmi-developer@lists.sourceforge.net, mchehab@kernel.org,
 linux-arm-kernel@lists.infradead.org, angelogioacchino.delregno@collabora.com,
 sbranden@broadcom.com, logang@deltatee.com, andersson@kernel.org,
 marcan@marcan.st, haiyangz@microsoft.com, linux-kernel@vger.kernel.org,
 leoyang.li@nxp.com, konrad.dybcio@linaro.org, linux-sunxi@lists.linux.dev,
 vkoul@kernel.org, linux-s390@vger.kernel.org, mhiramat@kernel.org,
 zhang.lyra@gmail.com, tj@kernel.org, manuel.lauss@gmail.com,
 linux-media@vger.kernel.org, shawnguo@kernel.org, afaerber@suse.de,
 daniel@zonque.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Mar 27, 2024 at 04:03:11PM +0000, Allen Pais wrote:
> The only generic interface to execute asynchronously in the BH context is
> tasklet; however, it's marked deprecated and has some design flaws. To
> replace tasklets, BH workqueue support was recently added. A BH workqueue
> behaves similarly to regular workqueues except that the queued work items
> are executed in the BH context.
> 
> This patch converts drivers/infiniband/* from tasklet to BH workqueue.

I think you mean drivers/char/ipmi/* here.

I believe that work queues items are execute single-threaded for a work
queue, so this should be good.  I need to test this, though.  It may be
that an IPMI device can have its own work queue; it may not be important
to run it in bh context.

-corey

> 
> Based on the work done by Tejun Heo <tj@kernel.org>
> Branch: https://git.kernel.org/pub/scm/linux/kernel/git/tj/wq.git for-6.10
> 
> Signed-off-by: Allen Pais <allen.lkml@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 30 ++++++++++++++---------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index b0eedc4595b3..fce2a2dbdc82 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -36,12 +36,13 @@
>  #include <linux/nospec.h>
>  #include <linux/vmalloc.h>
>  #include <linux/delay.h>
> +#include <linux/workqueue.h>
>  
>  #define IPMI_DRIVER_VERSION "39.2"
>  
>  static struct ipmi_recv_msg *ipmi_alloc_recv_msg(void);
>  static int ipmi_init_msghandler(void);
> -static void smi_recv_tasklet(struct tasklet_struct *t);
> +static void smi_recv_work(struct work_struct *t);
>  static void handle_new_recv_msgs(struct ipmi_smi *intf);
>  static void need_waiter(struct ipmi_smi *intf);
>  static int handle_one_recv_msg(struct ipmi_smi *intf,
> @@ -498,13 +499,13 @@ struct ipmi_smi {
>  	/*
>  	 * Messages queued for delivery.  If delivery fails (out of memory
>  	 * for instance), They will stay in here to be processed later in a
> -	 * periodic timer interrupt.  The tasklet is for handling received
> +	 * periodic timer interrupt.  The work is for handling received
>  	 * messages directly from the handler.
>  	 */
>  	spinlock_t       waiting_rcv_msgs_lock;
>  	struct list_head waiting_rcv_msgs;
>  	atomic_t	 watchdog_pretimeouts_to_deliver;
> -	struct tasklet_struct recv_tasklet;
> +	struct work_struct recv_work;
>  
>  	spinlock_t             xmit_msgs_lock;
>  	struct list_head       xmit_msgs;
> @@ -704,7 +705,7 @@ static void clean_up_interface_data(struct ipmi_smi *intf)
>  	struct cmd_rcvr  *rcvr, *rcvr2;
>  	struct list_head list;
>  
> -	tasklet_kill(&intf->recv_tasklet);
> +	cancel_work_sync(&intf->recv_work);
>  
>  	free_smi_msg_list(&intf->waiting_rcv_msgs);
>  	free_recv_msg_list(&intf->waiting_events);
> @@ -1319,7 +1320,7 @@ static void free_user(struct kref *ref)
>  {
>  	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
>  
> -	/* SRCU cleanup must happen in task context. */
> +	/* SRCU cleanup must happen in work context. */
>  	queue_work(remove_work_wq, &user->remove_work);
>  }
>  
> @@ -3605,8 +3606,7 @@ int ipmi_add_smi(struct module         *owner,
>  	intf->curr_seq = 0;
>  	spin_lock_init(&intf->waiting_rcv_msgs_lock);
>  	INIT_LIST_HEAD(&intf->waiting_rcv_msgs);
> -	tasklet_setup(&intf->recv_tasklet,
> -		     smi_recv_tasklet);
> +	INIT_WORK(&intf->recv_work, smi_recv_work);
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 0);
>  	spin_lock_init(&intf->xmit_msgs_lock);
>  	INIT_LIST_HEAD(&intf->xmit_msgs);
> @@ -4779,7 +4779,7 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  			 * To preserve message order, quit if we
>  			 * can't handle a message.  Add the message
>  			 * back at the head, this is safe because this
> -			 * tasklet is the only thing that pulls the
> +			 * work is the only thing that pulls the
>  			 * messages.
>  			 */
>  			list_add(&smi_msg->link, &intf->waiting_rcv_msgs);
> @@ -4812,10 +4812,10 @@ static void handle_new_recv_msgs(struct ipmi_smi *intf)
>  	}
>  }
>  
> -static void smi_recv_tasklet(struct tasklet_struct *t)
> +static void smi_recv_work(struct work_struct *t)
>  {
>  	unsigned long flags = 0; /* keep us warning-free. */
> -	struct ipmi_smi *intf = from_tasklet(intf, t, recv_tasklet);
> +	struct ipmi_smi *intf = from_work(intf, t, recv_work);
>  	int run_to_completion = intf->run_to_completion;
>  	struct ipmi_smi_msg *newmsg = NULL;
>  
> @@ -4866,7 +4866,7 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  
>  	/*
>  	 * To preserve message order, we keep a queue and deliver from
> -	 * a tasklet.
> +	 * a work.
>  	 */
>  	if (!run_to_completion)
>  		spin_lock_irqsave(&intf->waiting_rcv_msgs_lock, flags);
> @@ -4887,9 +4887,9 @@ void ipmi_smi_msg_received(struct ipmi_smi *intf,
>  		spin_unlock_irqrestore(&intf->xmit_msgs_lock, flags);
>  
>  	if (run_to_completion)
> -		smi_recv_tasklet(&intf->recv_tasklet);
> +		smi_recv_work(&intf->recv_work);
>  	else
> -		tasklet_schedule(&intf->recv_tasklet);
> +		queue_work(system_bh_wq, &intf->recv_work);
>  }
>  EXPORT_SYMBOL(ipmi_smi_msg_received);
>  
> @@ -4899,7 +4899,7 @@ void ipmi_smi_watchdog_pretimeout(struct ipmi_smi *intf)
>  		return;
>  
>  	atomic_set(&intf->watchdog_pretimeouts_to_deliver, 1);
> -	tasklet_schedule(&intf->recv_tasklet);
> +	queue_work(system_bh_wq, &intf->recv_work);
>  }
>  EXPORT_SYMBOL(ipmi_smi_watchdog_pretimeout);
>  
> @@ -5068,7 +5068,7 @@ static bool ipmi_timeout_handler(struct ipmi_smi *intf,
>  				       flags);
>  	}
>  
> -	tasklet_schedule(&intf->recv_tasklet);
> +	queue_work(system_bh_wq, &intf->recv_work);
>  
>  	return need_timer;
>  }
> -- 
> 2.17.1
> 
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
