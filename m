Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A4F5A5F7E44
	for <lists+openipmi-developer@lfdr.de>; Fri,  7 Oct 2022 21:44:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ogtGH-00050c-Cn;
	Fri, 07 Oct 2022 19:43:57 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ogtGF-00050V-N1
 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:43:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Sqgk7vTnYRdgM+TBPIIE0L5bk7Y3lTOw+hP6zTPy1KM=; b=XLB+R8x/nRyyteKxCpegUvNJh2
 Z+h1VdmDNo/O4ADBIsioaXNnWGlRWAGLT51sSo4ErJpVuMO7ZuTGCsoMOQA+byoc69/r7tALNQUO1
 mbJW45T3e+yUkDzbB7z+J6n9j5RBuiVJ+Tvz6YDHMA8ElJGO3APO2YPl8D+VAWOL7ucc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Sqgk7vTnYRdgM+TBPIIE0L5bk7Y3lTOw+hP6zTPy1KM=; b=HA13Yj8tOeJlAFQJBdBVDCxLuP
 /GhEPqdCC6yUxsipUQrzeGFduDMuIh2UpgpPoi0Ap7iPWRa8NB0Rv9+a1XIASqakDLHqXa7N7kZdt
 WnR79/ERP5jTdE2BLjgBAoN7RrnXw4RWWJBsyOs1aFw/0/36PfSKS/QOYYiN74gaxUzc=;
Received: from mail-qt1-f182.google.com ([209.85.160.182])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ogtGD-00G4C5-54 for openipmi-developer@lists.sourceforge.net;
 Fri, 07 Oct 2022 19:43:55 +0000
Received: by mail-qt1-f182.google.com with SMTP id w28so1457950qtv.9
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 07 Oct 2022 12:43:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=Sqgk7vTnYRdgM+TBPIIE0L5bk7Y3lTOw+hP6zTPy1KM=;
 b=avtqMfUEcHFO1JfCRrFH72Cg2hchtm2k8yPK73wOY6Jxi0eDk58mZxoWnUrOmLFXQ1
 mQ1oA83th6sfCOm1bysSU52JYrsQjc6mwg9Re0gM9eOg8ICUiKUIa5Hil9px5jRMqQ9E
 e2tQ9+YTcrkiDko4X051GiCCC+QNzjMr4ByBnrl6wm9wYNzkC5UvpShq7ijG831N0iBP
 NmP9jXobbx7S8M2tRf9XK5yJ/V2EzZDBZIyFglBGaDQG06sAKD2QUZM85LjGJ+CK4m+7
 5NVD/NGCyThZdKMtrpuOpPxd0YZB5rUmcQWC8RSYmiS3kJ3S+ZIxgXN6NQ0FENHq7pWk
 a3Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=Sqgk7vTnYRdgM+TBPIIE0L5bk7Y3lTOw+hP6zTPy1KM=;
 b=UjO6g2pk36JOSlXC7JstINSrJKLQ82pdYDLmmr6nnIsjd04YuYJCGV9aJ4FBFy/RnB
 nYxnz1jhAYY2zz+1fAOpPi6j7qw7hCaSvHaysf3Skpt0vjfEmK62oJaVjsmO7RgNPl8H
 kPQ3jymaTrg0zZWgIlntaGDFkoYCVfm5gJNOkfmsD5evtlN7aJBqA+V9FJeUR3Gi0+5l
 2LhuS6E56cXxdZ3/y94vHEYkmtol/yUAutmoiGsa4FRHCaR3G3xBu/KEKtui0BCR+6iq
 7IOmT139nUU2zTl3SHREUmt5JhcoOjkit2D8lHDVxyBsIq+C+RX7qOFgOiRwsKMYfYV5
 64yA==
X-Gm-Message-State: ACrzQf2X2632Z4qkY/xeQqPmFCy30asirmCU2czAmnVlzJLF91awEMQT
 52iXurUuLGv0VcPY1SWDaw==
X-Google-Smtp-Source: AMsMyM5xOXbI645N/nUn8wJtxRDISFGE1jRSLqkpwvvIvI1uwBUoF8NeY9/djTCGvticrw2n/hAyTQ==
X-Received: by 2002:a05:622a:150:b0:35d:4775:53be with SMTP id
 v16-20020a05622a015000b0035d477553bemr5623336qtw.35.1665171823795; 
 Fri, 07 Oct 2022 12:43:43 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 w2-20020a05620a444200b006ce1bfbd603sm2857969qkp.124.2022.10.07.12.43.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 07 Oct 2022 12:43:43 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:fa3f:9b5b:700:c1ba])
 by serve.minyard.net (Postfix) with ESMTPSA id 3D4621800BD;
 Fri,  7 Oct 2022 19:43:42 +0000 (UTC)
Date: Fri, 7 Oct 2022 14:43:41 -0500
From: Corey Minyard <minyard@acm.org>
To: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
Message-ID: <Y0CBbRqGPDU3g9hQ@minyard.net>
References: <20221007092617.87597-1-zhangyuchen.lcr@bytedance.com>
 <20221007092617.87597-2-zhangyuchen.lcr@bytedance.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221007092617.87597-2-zhangyuchen.lcr@bytedance.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri, Oct 07, 2022 at 05:26:15PM +0800, Zhang Yuchen wrote:
 > If you continue to access and send messages at a high frequency (once >
 every 55s) when the IPMI is disconnected, messages will accumula [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.182 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.182 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ogtGD-00G4C5-54
Subject: Re: [Openipmi-developer] [PATCH 1/3] ipmi: fix msg stack when IPMI
 is disconnected
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 qi.zheng@linux.dev
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Oct 07, 2022 at 05:26:15PM +0800, Zhang Yuchen wrote:
> If you continue to access and send messages at a high frequency (once
> every 55s) when the IPMI is disconnected, messages will accumulate in
> intf->[hp_]xmit_msg. If it lasts long enough, it takes up a lot of
> memory.

The IPMI driver really wasn't designed to handle this sort of thing.  If
there is a BMC there, it should be there except when it's rebooting,
which should only take a few seconds.  Which is what this is all
designed to handle.

> 
> The reason is that if IPMI is disconnected, each message will be set to
> IDLE after it returns to HOSED through IDLE->ERROR0->HOSED. The next
> message goes through the same process when it comes in. This process
> needs to wait for IBF_TIMEOUT * (MAX_ERROR_RETRIES + 1) = 55s.
> 
> Each message takes 55S to destroy. This results in a continuous increase
> in memory.
> 
> I find that if I wait 5 seconds after the first message fails, the
> status changes to ERROR0 in smi_timeout(). The next message will return
> the error code IPMI_NOT_IN_MY_STATE_ERR directly without wait.

So basically, you will stay in error state until the BMC recovers.  The
KCS state machine will reject messages until the state machine detects
that the BMC is working again.  I think this is ok.

Have you tested that if the BMC comes back that the driver recovers and
works?  Looking at the code it seems to be the case, but can you test to
be sure, if you have not already?

Also, the following is in start_kcs_transaction():

	if ((kcs->state != KCS_IDLE) && (kcs->state != KCS_HOSED)) {
		dev_warn(kcs->io->dev, "KCS in invalid state %d\n", kcs->state);
		return IPMI_NOT_IN_MY_STATE_ERR;
	}

You probably need to remove the (kcs->state != KCS_HOSED) part of this
now.  Would you agree?

-corey

> 
> This is more in line with our needs.
> 
> So instead of setting each message state to IDLE after it reaches the
> state HOSED, set state to ERROR0.
> 
> After testing, the problem has been solved, no matter how many
> consecutive sends, will not cause continuous memory growth. It also
> returns to normal immediately after the IPMI is restored.
> 
> The verification operations are as follows:
> 
> 1. Use BPF to record the ipmi_alloc/free_smi_msg().
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
> 
> 2. Exec `date; time for x in $(seq 1 2); do ipmitool mc info; done`.
> 3. Record the output of `time` and when free all msgs.
> 
> Before:
> 
> `time` takes 120s, This is because `ipmitool mc info` send 4 msgs and
> waits only 15 seconds for each message. Last msg is free after 440s.
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
>   Oct 05 11:40:55 Attaching 2 probes...
>   Oct 05 11:41:12 alloc 0xffff9558a05f0c00
>   Oct 05 11:41:27 alloc 0xffff9558a05f1a00
>   Oct 05 11:41:42 alloc 0xffff9558a05f0000
>   Oct 05 11:41:57 alloc 0xffff9558a05f1400
>   Oct 05 11:42:07 free  0xffff9558a05f0c00
>   Oct 05 11:42:07 alloc 0xffff9558a05f7000
>   Oct 05 11:42:22 alloc 0xffff9558a05f2a00
>   Oct 05 11:42:37 alloc 0xffff9558a05f5a00
>   Oct 05 11:42:52 alloc 0xffff9558a05f3a00
>   Oct 05 11:43:02 free  0xffff9558a05f1a00
>   Oct 05 11:43:57 free  0xffff9558a05f0000
>   Oct 05 11:44:52 free  0xffff9558a05f1400
>   Oct 05 11:45:47 free  0xffff9558a05f7000
>   Oct 05 11:46:42 free  0xffff9558a05f2a00
>   Oct 05 11:47:37 free  0xffff9558a05f5a00
>   Oct 05 11:48:32 free  0xffff9558a05f3a00
> 
>   $ root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
>   ipmitool mc info; done
> 
>   Wed Oct  5 11:41:12 CST 2022
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   Get Device ID command failed: Unspecified error
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   No data available
>   Get Device ID command failed
> 
>   real        1m55.052s
>   user        0m0.001s
>   sys        0m0.001s
> 
> After:
> 
> `time` takes 55s, all msgs is returned and free after 55s.
> 
>   $ bpftrace -e 'kretprobe:ipmi_alloc_recv_msg {printf("alloc
>       %p\n",retval);} kprobe:free_recv_msg {printf("free  %p\n",arg0)}'
> 
>   Oct 07 16:30:35 Attaching 2 probes...
>   Oct 07 16:30:45 alloc 0xffff955943aa9800
>   Oct 07 16:31:00 alloc 0xffff955943aacc00
>   Oct 07 16:31:15 alloc 0xffff955943aa8c00
>   Oct 07 16:31:30 alloc 0xffff955943aaf600
>   Oct 07 16:31:40 free  0xffff955943aa9800
>   Oct 07 16:31:40 free  0xffff955943aacc00
>   Oct 07 16:31:40 free  0xffff955943aa8c00
>   Oct 07 16:31:40 free  0xffff955943aaf600
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
>   Oct 07 16:31:40 free  0xffff9558ec8f7e00
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7800
>   Oct 07 16:31:40 free  0xffff9558ec8f7800
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7e00
>   Oct 07 16:31:40 free  0xffff9558ec8f7e00
>   Oct 07 16:31:40 alloc 0xffff9558ec8f7800
>   Oct 07 16:31:40 free  0xffff9558ec8f7800
> 
>   root@dc00-pb003-t106-n078:~# date;time for x in $(seq 1 2); do
>   ipmitool mc info; done
>   Fri Oct  7 16:30:45 CST 2022
>   No data available
>   Get Device ID command failed
>   No data available
>   No data available
>   No valid response received
>   Get Device ID command failed: Unspecified error
>   Get Device ID command failed: 0xd5 Command not supported in present state
>   Get Device ID command failed: Command not supported in present state
> 
>   real        0m55.038s
>   user        0m0.001s
>   sys        0m0.001s
> 
> Signed-off-by: Zhang Yuchen <zhangyuchen.lcr@bytedance.com>
> ---
>  drivers/char/ipmi/ipmi_kcs_sm.c | 14 ++++++++++----
>  1 file changed, 10 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_kcs_sm.c b/drivers/char/ipmi/ipmi_kcs_sm.c
> index efda90dcf5b3..e7f2cd10e5a6 100644
> --- a/drivers/char/ipmi/ipmi_kcs_sm.c
> +++ b/drivers/char/ipmi/ipmi_kcs_sm.c
> @@ -122,10 +122,10 @@ struct si_sm_data {
>  	unsigned long  error0_timeout;
>  };
>  
> -static unsigned int init_kcs_data(struct si_sm_data *kcs,
> -				  struct si_sm_io *io)
> +static unsigned int init_kcs_data_with_state(struct si_sm_data *kcs,
> +				  struct si_sm_io *io, enum kcs_states state)
>  {
> -	kcs->state = KCS_IDLE;
> +	kcs->state = state;
>  	kcs->io = io;
>  	kcs->write_pos = 0;
>  	kcs->write_count = 0;
> @@ -140,6 +140,12 @@ static unsigned int init_kcs_data(struct si_sm_data *kcs,
>  	return 2;
>  }
>  
> +static unsigned int init_kcs_data(struct si_sm_data *kcs,
> +				  struct si_sm_io *io)
> +{
> +	return init_kcs_data_with_state(kcs, io, KCS_IDLE);
> +}
> +
>  static inline unsigned char read_status(struct si_sm_data *kcs)
>  {
>  	return kcs->io->inputb(kcs->io, 1);
> @@ -495,7 +501,7 @@ static enum si_sm_result kcs_event(struct si_sm_data *kcs, long time)
>  	}
>  
>  	if (kcs->state == KCS_HOSED) {
> -		init_kcs_data(kcs, kcs->io);
> +		init_kcs_data_with_state(kcs, kcs->io, KCS_ERROR0);
>  		return SI_SM_HOSED;
>  	}
>  
> -- 
> 2.30.2
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
