Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C914745076A
	for <lists+openipmi-developer@lfdr.de>; Mon, 15 Nov 2021 15:45:42 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mmdEn-0005gR-Pj; Mon, 15 Nov 2021 14:45:37 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mmdEm-0005gK-30
 for openipmi-developer@lists.sourceforge.net; Mon, 15 Nov 2021 14:45:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Tdu5IEt0CrhTdO1umI7D6SnTK3BhqQhwxPqQfGD8ylY=; b=LwfVoypW8KE5mqLMGmMUIbbMWu
 qWCwe0JT9ePB/KJXnk6juYc0CyFHEK7IeKdQmJrMb6sZsgWHrBQrIoyxkbX5pRfAPxFo0r04sEfWf
 PoVZc0IenrCis91cG+OEtxUL0XtdolH7K1OivTrxMmsD9GvrweF0tT6vlX/FWx0IGvxo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Tdu5IEt0CrhTdO1umI7D6SnTK3BhqQhwxPqQfGD8ylY=; b=KA0izEsbbDmoSQ87HAzUU+s1lO
 R+p0zCcKpycccIUZ9CWNpfloPSgWPlH9bED5gIr8hiDekoo7GTtV5H5rvEiCLkq0qc5268l1ES+Rc
 vivh0/bEj8qQ4hSZy3KcuGXiQS0L38pAIVM7bp/cOVbiOjkLhn7axgCNuBcaIR7Y5xqY=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mmdEk-0006Lh-9A
 for openipmi-developer@lists.sourceforge.net; Mon, 15 Nov 2021 14:45:35 +0000
Received: by mail-qk1-f178.google.com with SMTP id 193so17010148qkh.10
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 15 Nov 2021 06:45:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=Tdu5IEt0CrhTdO1umI7D6SnTK3BhqQhwxPqQfGD8ylY=;
 b=jClH9vTJfZUwAvEmZtsU3aLIbQdlYSYhpSIj7J0ttcprasUktxW+Ytt5qmC9jmT3f2
 7pSry9zpjI8Hp9ExolPqUhaerOOJde8goOR4/TMWsngrOh0CjZN3aceuf1mr6aOWlLwg
 IGJbeg4Z6oRiusgI2GcWKJvr7SeF/b/EIK0L8jEj3Mb31s1XwHTMWalxBKWCvzwEqBi2
 NrPzCY4mKg9f6tHAZFsjHW515pmpv83uYUH6Ab3cqbfHKp08QFBSZw2kgjIwnRdPe6S6
 1eRYLTS+qzwpDkVXbkSPux//7VPn0ghekFu0vOfX7zkl+vu/VbtcYKX4dbJ5r08wttsU
 SOfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=Tdu5IEt0CrhTdO1umI7D6SnTK3BhqQhwxPqQfGD8ylY=;
 b=fDrR8i5LIYdDD8orpcVDm5Cn5EN86ZRVoavgKdLOmybnE69Viez/FMoMsjGp7s1Tvt
 uKTDqfXnFAjjBpfwbAc5ieEp74dItzAM0o6NmUo2iJr7abdpg7RjxDypp0DB9tqyhju0
 +SUy8uT+o0myevgxwFfcWiCAB+Qqdz21vlqygKbR2iYXypcOItCAkbxI3FGUgdWiOvoO
 47EKohcKnnkjms/x7BnE2reqSgoJn9ISco5RPz5tY2hGRCdJJ+i1++gB5EzDcI6W6TMp
 HOrslWgvjDf7fOUxvdTyjLwIWIh3CU2ftBmVzjAxUIc/slMrtYrsDqaTMQAjzU0ce/Gf
 YIDQ==
X-Gm-Message-State: AOAM531HxwJEiT6relPW6tc1BHUMn1S9DkneBQ5XD6Rxlvy2yjuVn6rI
 UeuW0LH9v9KZobTjpDN0tg==
X-Google-Smtp-Source: ABdhPJyTXb4p5BXWAB1nFwm1mn+F0jqK/MmISSrSrGLz9gjablF/j+oH35pDTn7Qsklf63QkDHq77w==
X-Received: by 2002:a37:2706:: with SMTP id n6mr31067877qkn.216.1636987528171; 
 Mon, 15 Nov 2021 06:45:28 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id s10sm6639946qke.132.2021.11.15.06.45.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 15 Nov 2021 06:45:27 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f4b6:aaf6:5a5e:d0a2])
 by serve.minyard.net (Postfix) with ESMTPSA id B339D1800BA;
 Mon, 15 Nov 2021 14:45:26 +0000 (UTC)
Date: Mon, 15 Nov 2021 08:45:25 -0600
From: Corey Minyard <minyard@acm.org>
To: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
Message-ID: <20211115144525.GA15676@minyard.net>
References: <20211115131645.25116-1-ioanna-maria.alifieraki@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211115131645.25116-1-ioanna-maria.alifieraki@canonical.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, Nov 15, 2021 at 03:16:45PM +0200, Ioanna Alifieraki
 wrote: > Currently when removing an ipmi_user the removal is deferred as
 a work on > the system's workqueue. Although this guarantees the fr [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mmdEk-0006Lh-9A
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: Move remove_work to
 dedicated workqueue
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Nov 15, 2021 at 03:16:45PM +0200, Ioanna Alifieraki wrote:
> Currently when removing an ipmi_user the removal is deferred as a work on
> the system's workqueue. Although this guarantees the free operation will
> occur in non atomic context, it can race with the ipmi_msghandler module
> removal (see [1]) . In case a remove_user work is scheduled for removal
> and shortly after ipmi_msghandler module is removed we can end up in a
> situation where the module is removed fist and when the work is executed
> the system crashes with :
> BUG: unable to handle page fault for address: ffffffffc05c3450
> PF: supervisor instruction fetch in kernel mode
> PF: error_code(0x0010) - not-present page
> because the pages of the module are gone. In cleanup_ipmi() there is no
> easy way to detect if there are any pending works to flush them before
> removing the module. This patch creates a separate workqueue and schedules
> the remove_work works on it. When removing the module the workqueue is
> drained when destroyed to avoid the race.

Thanks, this is in my for-next queue.  If nobody complains after a week
or so I'll send it on.

-corey

> 
> [1] https://bugs.launchpad.net/bugs/1950666
> 
> Cc: stable@vger.kernel.org
> Fixes: 3b9a907223d7 (ipmi: fix sleep-in-atomic in free_user at cleanup SRCU user->release_barrier)
> Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index deed355422f4..1ade72bfae0f 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -191,6 +191,8 @@ struct ipmi_user {
>  	struct work_struct remove_work;
>  };
>  
> +struct workqueue_struct *remove_work_wq;
> +
>  static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
>  	__acquires(user->release_barrier)
>  {
> @@ -1297,7 +1299,7 @@ static void free_user(struct kref *ref)
>  	struct ipmi_user *user = container_of(ref, struct ipmi_user, refcount);
>  
>  	/* SRCU cleanup must happen in task context. */
> -	schedule_work(&user->remove_work);
> +	queue_work(remove_work_wq, &user->remove_work);
>  }
>  
>  static void _ipmi_destroy_user(struct ipmi_user *user)
> @@ -5383,6 +5385,13 @@ static int ipmi_init_msghandler(void)
>  
>  	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
>  
> +	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
> +	if (!remove_work_wq) {
> +		pr_err("unable to create ipmi-msghandler-remove-wq workqueue");
> +		rv = -ENOMEM;
> +		goto out;
> +	}
> +
>  	initialized = true;
>  
>  out:
> @@ -5408,6 +5417,8 @@ static void __exit cleanup_ipmi(void)
>  	int count;
>  
>  	if (initialized) {
> +		destroy_workqueue(remove_work_wq);
> +
>  		atomic_notifier_chain_unregister(&panic_notifier_list,
>  						 &panic_block);
>  
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
