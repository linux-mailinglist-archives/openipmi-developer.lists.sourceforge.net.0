Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BF5AA44EBCF
	for <lists+openipmi-developer@lfdr.de>; Fri, 12 Nov 2021 18:09:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mla3B-00010B-2V; Fri, 12 Nov 2021 17:09:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mla39-000101-HA
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:09:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5xTzgAtGHLv1HF4i4r4EWvrRW3cWwxS5mJylm7DOgNE=; b=SGjMnlV3TOBQnE0W2qeOJ+1RKv
 0MJP+YfDCSW+n540SZ9Dxc7/FL+DbRZTDQwQ32nin9UOQG54cKh4g5t0tyMUlrRRvPCTGgvfZiZOV
 3Laoplh9OXWw6kwxgn8LCAPcBTnkzG3sFxGZnfuDD0lmTj4q6GWhYVJdRWslkq5rJFgE=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5xTzgAtGHLv1HF4i4r4EWvrRW3cWwxS5mJylm7DOgNE=; b=mQJroKlvYuIUlUULKGraBw1J4j
 urKgnKHm6dNoPA9GxPPg3S/dLGdG7DJIajETgnhyO26sWTsnzhE7zqPfiV78K1djygUBETgKSOBmo
 yTbd16hr6Jy/d3Mt1Tr1yVB4cFH/43a7Jhc0boQLdcxTQEjOtszMrv9lIa86kDRTJNug=;
Received: from mail-oi1-f182.google.com ([209.85.167.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mla38-00Azd8-KA
 for openipmi-developer@lists.sourceforge.net; Fri, 12 Nov 2021 17:09:16 +0000
Received: by mail-oi1-f182.google.com with SMTP id n66so19011038oia.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 12 Nov 2021 09:09:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=5xTzgAtGHLv1HF4i4r4EWvrRW3cWwxS5mJylm7DOgNE=;
 b=HhysRBrDiitmrXEjurKGFnxzLvgwsfit2tEJZkqfMG7WZG3E0M2cqYBgtReSawVlrp
 ZTD7jzRPqI5wAXWKkn9xNcpdCOc3ZcK4B0ZiSt0V1wxIBUnIumnCfVU0fFwIw60EnGCG
 lRHpx9wx0RwK7XwbmlWuxBo13sQL//W03GvtgGJoO29ERwiexXZXnG0PS7IzBQknOAhn
 rtA8bS0GP/Hd0eGSfM/wR5U2omY2jFJCuiTA/z0OWV4/TLs/exbN0LXMwsBIG9enkOZj
 boSlB94I/jaAg5kc+jpya9ysG8Kr2czHU8TpA7gSeMtXcByql+gEBl2z2xjaJPNcP5MU
 p3bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=5xTzgAtGHLv1HF4i4r4EWvrRW3cWwxS5mJylm7DOgNE=;
 b=TGYOYjYy9OJFAO2QBe9NBEdqTSNPMusO0RuaL7DftjYUo42I5x3JzAQa2pwvrQEkb1
 iUdUK0ThCga0UpWw2oY7MaSofBVg/ue0gqeUIXmZcSe281jbZ2GPRrQutSVnakQNZhts
 CWxcNe0GD/E+gJkr6Evp66/rwi/pyYsUbPtA21Me+iVg4go5wE6Lnq3V1QVO04CWv6ev
 a8ObRVFZimC1EI3dgNVQDiy43lo7JKSlrO/36PDv+wQIsmzIzywMxw3ulL6Hnv5ADUTd
 4xrzmLDIC5mKQ0eX8R4CMU7AFSumpKjYa0qRhzD3ZzJecmY0/gO3SqzdYTiUKKgBin9d
 72sw==
X-Gm-Message-State: AOAM530VLG6NM4VcGyCR+XhiASWIbXMomLKb68jyI582Y5dKW04tOntv
 Ey9J8t2KiFyITC8j0rcGPA==
X-Google-Smtp-Source: ABdhPJwvaxKTFfVdqKMt2DADswH2+Ddhe3ZHBj/hlvSPz+beUA0I/BnypnaWUm13Q9jP4KTEKqqvtg==
X-Received: by 2002:aca:230b:: with SMTP id e11mr17639326oie.22.1636736948949; 
 Fri, 12 Nov 2021 09:09:08 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id h14sm1364502ots.22.2021.11.12.09.09.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 12 Nov 2021 09:09:08 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:3da4:ae9:63f5:5ac8])
 by serve.minyard.net (Postfix) with ESMTPSA id 11D461800B9;
 Fri, 12 Nov 2021 17:09:07 +0000 (UTC)
Date: Fri, 12 Nov 2021 11:09:05 -0600
From: Corey Minyard <minyard@acm.org>
To: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
Message-ID: <20211112170905.GI4667@minyard.net>
References: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211112165413.7747-1-ioanna-maria.alifieraki@canonical.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Nov 12, 2021 at 06:54:13PM +0200, Ioanna Alifieraki
 wrote: > Currently when removing an ipmi_user the removal is deferred as
 a work on > the system's workqueue. Although this guarantees the fr [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.182 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.182 listed in wl.mailspike.net]
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
X-Headers-End: 1mla38-00Azd8-KA
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Move remove_work to
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
Cc: openipmi-developer@lists.sourceforge.net, ioanna.alifieraki@gmail.com,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Nov 12, 2021 at 06:54:13PM +0200, Ioanna Alifieraki wrote:
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
> flushed to avoid the race.

Yeah, this is an issue.  One comment below...

> 
> [1] https://bugs.launchpad.net/bugs/1950666
> 
> Cc: stable@vger.kernel.org
> Fixes: 3b9a907223d7 (ipmi: fix sleep-in-atomic in free_user at cleanup SRCU user->release_barrier)
> Signed-off-by: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 9 ++++++++-
>  1 file changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index deed355422f4..9e0ad2ccd3e0 100644
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
> @@ -5383,6 +5385,8 @@ static int ipmi_init_msghandler(void)
>  
>  	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
>  
> +	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
> +

Shouldn't you check the return value here?

-corey

>  	initialized = true;
>  
>  out:
> @@ -5408,6 +5412,9 @@ static void __exit cleanup_ipmi(void)
>  	int count;
>  
>  	if (initialized) {
> +		flush_workqueue(remove_work_wq);
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
