Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 913E8708551
	for <lists+openipmi-developer@lfdr.de>; Thu, 18 May 2023 17:49:27 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1pzfsX-0004e3-2Z;
	Thu, 18 May 2023 15:49:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1pzfsV-0004dx-Ah
 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 May 2023 15:49:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=W9K3/dcfFhDlfOWF8AkzlrJ8hrxfd6jNyjEB/GmUE5Q=; b=SCTLeuTJBaPdNqQc39ZdhWxXfi
 xUk3avFp1TJC+dwLYOnBwng5DhMTBLuSsFHHGxbCrrrPjOyJfoZRrpxKW/dopODNQdTuz/oWgFrxS
 r9cpZ2ScIjKgqZxD/ty61JpblETDJfrEjHszz/8MZMJ9Xcj1Ub7zrbN1Ynz5eg2E2I0o=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=W9K3/dcfFhDlfOWF8AkzlrJ8hrxfd6jNyjEB/GmUE5Q=; b=dSK9rAlKWBllEseHvIaFpx/StR
 xXK1pE6YlgFPFZ/+utZ51DjVZSe8ihDKJxghfnEOBvi/ouZq1nTcIArdJ9ju3JhiOdtJqFQnCve3A
 i2q+lkykm3DAF7jSytctm7Fd7EQaJBE64v58XhMGFDrtAytNV8GTZOfnd0rw93v/YiUs=;
Received: from mail-qt1-f178.google.com ([209.85.160.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1pzfsQ-0003GQ-D3 for openipmi-developer@lists.sourceforge.net;
 Thu, 18 May 2023 15:49:19 +0000
Received: by mail-qt1-f178.google.com with SMTP id
 d75a77b69052e-3f4e01eb845so12705191cf.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 18 May 2023 08:49:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1684424948; x=1687016948;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=W9K3/dcfFhDlfOWF8AkzlrJ8hrxfd6jNyjEB/GmUE5Q=;
 b=YfTn2g43JVOGPLwFFhKdK2bacXhwDh/DAdp8+QJJR+ZHfTJWN4huXk9JSzsDnaIZ1W
 fgztgmaNiYfoxyguskt5F/bEXPM3jRitCaEZCtEKuptATfSTmZ1BPm97oB2O9ychg9p/
 kNVOhhvksDL/pFYmNVObFTgcerxfBohxuoqiveauCgSTo/7gAhvumCX+geIMZ7hD0NxJ
 +oWdxfhw4F5dwswstiywCjJ5Mvv4mCNYHOIeCX1KBcziHh18SvR0sisBj74eMMDvWW+h
 JQ4Fkqk6HLIWeCnQs//1RyY1q9fwt5+ssua5AvRr4jb3xlwdVTfE93BET3hhW7rmGC31
 OOgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1684424948; x=1687016948;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=W9K3/dcfFhDlfOWF8AkzlrJ8hrxfd6jNyjEB/GmUE5Q=;
 b=Trqvopb+DttJ3h2yiqo7BQtnhNeTPzGoRlrbosKODsRkGFCxOtY8PNugUkngRAqG66
 ZyYljOaRyUhd7kUeRkhzYOhMcISTK4ICIRKaVHwAw80flWX64gvf2sAKjW8WhbIitMgh
 OM4TESshmb/ujowpOPFZg0d9H738dxMJWdx1qJx29kNojoPc9+ATPM7/A9jZ8aRUl7hP
 jpeSv9yX2o1rMjf+zZ53Ss1ZVgyAlet4HffFsGwGRxFmQA8+SteFZpNlYC0Hz3VnGi6s
 k5Icf9uXAUFp7IwdnK+ihvqW0SsjnjyjWp8VWQ6/J604R+OTpxBgeRsctdxT5HjErdn/
 6QoA==
X-Gm-Message-State: AC+VfDwJttdnJfAUA4z7Wxqc5AE1Co4HXNwtpd5uir7glPfkzNIXDTI8
 76gCjRfpxS79LbT5VXk8V20cd+lBug==
X-Google-Smtp-Source: ACHHUZ4N8VCB5dzCwyT9oJkzaWVOkoXAy5WTOrLHGtdGgIyJBPzbJ/dGs32bnXEi5d/+Svmq7WxFxg==
X-Received: by 2002:a05:622a:312:b0:3f0:a108:8630 with SMTP id
 q18-20020a05622a031200b003f0a1088630mr163505qtw.39.1684424948287; 
 Thu, 18 May 2023 08:49:08 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 o9-20020a05620a110900b0074dfd9283afsm472565qkk.79.2023.05.18.08.49.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 May 2023 08:49:07 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:9fd5:7d6d:b75c:c88d])
 by serve.minyard.net (Postfix) with ESMTPSA id EC4EF1800B8;
 Thu, 18 May 2023 15:49:05 +0000 (UTC)
Date: Thu, 18 May 2023 10:49:04 -0500
From: Corey Minyard <minyard@acm.org>
To: Yu Chen <chen.yu@easystack.cn>
Message-ID: <ZGZI8Mdb7eoq9VCE@mail.minyard.net>
References: <20230515121941.59859-1-chen.yu@easystack.cn>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230515121941.59859-1-chen.yu@easystack.cn>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Mon, May 15, 2023 at 05:19:41AM -0700, Yu Chen wrote: >
 A simple reproducer demonstrating the problem: (use ipmi_watchdog.ko) > >
 In one terminal: > > $ cat /dev/watchdog > ... > > In another termi [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.178 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.178 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1pzfsQ-0003GQ-D3
Subject: Re: [Openipmi-developer] [PATCH] watchdog: Avoid 100% CPU usage
 during reading watchdog when a task get signal
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

On Mon, May 15, 2023 at 05:19:41AM -0700, Yu Chen wrote:
> A simple reproducer demonstrating the problem: (use ipmi_watchdog.ko)
> 
> In one terminal:
> 
> $ cat /dev/watchdog
> ...
> 
> In another terminal:
> 
> $ ps -aux | grep cat
> 14755 pts/1    R+    43:00 cat /dev/watchdog
> 51943 pts/2    S+     0:00 grep --color=auto cat
> 
> $ kill -9 14755
> $
> $ cat /proc/14755/status | grep SigPnd
> SigPnd: 0000000000000100
> $
> $ top
> 
> Tasks: 1049 total,   2 running, 1047 sleeping,   0 stopped,   0 zombie
> %Cpu(s): 0.0 us, 1.0 sy, 0.0 ni, 98.9 id, 0.0 wa, 0.0 hi, 0.0 si, 0.0 st
> MiB Mem : 522594.8 total, 517241.4 free,  2922.1 used,   2431.2 buff/cache
> MiB Swap:      0.0 total,      0.0 free,     0.0 used. 516589.2 avail Mem
> 
> PID USER    PR  NI    VIRT    RES    SHR S  %CPU  %MEM  TIME+ COMMAND
> 14755 root  20   0  215552   1024    576 R 100.0  0.0  0:15.12 cat
> 53417 root  20   0  224960   7040   3648 R   0.7  0.0  0:00.10 top
> 11 root     20   0       0      0      0 I   0.3  0.0  0:02.85 rcu_sched
> 1772 root   20   0  512256 387776 380800 S   0.3  0.1  0:32.05 python
> 
> We can see that when the cat process gets the signal, the CPU usage
> is 100%, Since signal_pending is true, the pick_next_task function
> in schedule always returns itself, it retries schedule indefinitely.
> ipmi_read() will busyloop.
> 
> Signed-off-by: Yu Chen <chen.yu@easystack.cn>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 0d4a8dcac..173ed4266 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -803,6 +803,11 @@ static ssize_t ipmi_read(struct file *file,
>  		init_waitqueue_entry(&wait, current);
>  		add_wait_queue(&read_q, &wait);
>  		while (!data_to_read) {
> +			if (signal_pending(current)) {
> +				remove_wait_queue(&read_q, &wait);
> +				rv = -ERESTARTSYS;
> +				goto out;
> +			}

This skips the call to remove_from_wait_queue(), which is bad.  I
already have a fix for this from someone else.

-corey

>  			set_current_state(TASK_INTERRUPTIBLE);
>  			spin_unlock_irq(&ipmi_read_lock);
>  			schedule();
> @@ -810,10 +815,6 @@ static ssize_t ipmi_read(struct file *file,
>  		}
>  		remove_wait_queue(&read_q, &wait);
>  
> -		if (signal_pending(current)) {
> -			rv = -ERESTARTSYS;
> -			goto out;
> -		}
>  	}
>  	data_to_read = 0;
>  
> -- 
> 2.27.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
