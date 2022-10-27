Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E905960FBA9
	for <lists+openipmi-developer@lfdr.de>; Thu, 27 Oct 2022 17:20:30 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1oo4gD-0000Oo-RA;
	Thu, 27 Oct 2022 15:20:25 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1oo4gD-0000Oh-71
 for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:20:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=oriThv321w8lPnb3xddFybxmYLENHvizLP5o3nY/0YM=; b=TLf/qxJxiBDDJPfMh4pQZK8bQD
 mWjKE54hUcwKcwXXLvKIcNPMUJgEIIHQKMCrM5Q4sxaqgQbeFQ1qNc1nJTITdBj3q5uqt37FRswAc
 Ee6oJ+8B0xz4R6SG9Wz4xalbNo6sJ8Fa0RelhTtRAxfkiP/lcAfGZGGLM4knX9RF7n0Q=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=oriThv321w8lPnb3xddFybxmYLENHvizLP5o3nY/0YM=; b=hLineAyIcWtFUl8gluYCrMM/jI
 Rv82dXm+agryNt6HDW1BMBmh75xZZ0bJ+u9k7wVUnK6gZ13l/dpMoOKy9qVoWWdioMxtp1niTcVCs
 yqmPZEBy7mPM9Ps7+bTH23KTfyTrqoc8bbIV3JXPFA3KmmYFbuIw5p/Qe1WRstNoCju0=;
Received: from mail-qv1-f49.google.com ([209.85.219.49])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1oo4gB-00050e-HA for openipmi-developer@lists.sourceforge.net;
 Thu, 27 Oct 2022 15:20:25 +0000
Received: by mail-qv1-f49.google.com with SMTP id e15so1585615qvo.4
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 27 Oct 2022 08:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=oriThv321w8lPnb3xddFybxmYLENHvizLP5o3nY/0YM=;
 b=gTWIQ7ctBlXRLUIbSkwdkDCB2qrZPuamRL7bNce2kS2zOeui+831nB8uhfq25PKF4s
 Skz6TM+xoPoUubk+7LqRB06IVKMCplmBDwgjI5fIRC2wYs1RiFJbcvJgSJqbl/IGxsO8
 ydOD9K3kePbACyx4xL43/8uJfvh4OuvPyfPNeGcmcIAJ+Zb+W6QJ1CE7+tJ1hA6Q7oWl
 ARJ30zskV8n5wbK4c3x2HqnBYGnXvHUXTGhNFNvvMUycrBFkavoVaIXT0N1wbz96rELG
 0TlDMfR2exqclL6HpjgmWl2Wo2c7DMqyboILWPfs/ZQhBoH0Um1GYet463qXk+ijE5Lv
 +P3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=oriThv321w8lPnb3xddFybxmYLENHvizLP5o3nY/0YM=;
 b=N1GgMH8lR0Y3EvJhgLi4GFU+q+hdMbV2YES2jDv3peVGFIFPKy5EEvT77tvMjtgeRh
 TFZQWeonhojBekkJI2zwyMfFcstk5q6av3WYSrORD6lE+PViXrvhfTQSH2+OeeboLT9a
 kDoQ1r5iTXXy1GxXae94qOqScya/U5T4cEVCy4EAroR8cHkD+wiS42EzPrZhoqQPSby4
 Vkg50CQld8HJOYbV/auunNKCvN0YXptCoeQZ8r/npymKnFQkl0RujciWCyCFVw/LkWTt
 GOYPpG4zUNg+J68JPiwOiBCqWE+KqdjAEgBxTXQ//oi7Prp2uu2k6I0sRcXzRiU2wGce
 u+/Q==
X-Gm-Message-State: ACrzQf1IC90CYUbnVqDnQXzyDJRdna7nuOuuVfihlHm36t5Bs6Hcgf1e
 sh8aQJcgLAZnR4EYOg+tbA==
X-Google-Smtp-Source: AMsMyM7ZnaPKO/FedFG52KsDtlBOAgMRKpNa3l4sz0GIZrwDaRK51rXaD5BKU0dIKnwUovGvkv4x+g==
X-Received: by 2002:a0c:dd13:0:b0:4bb:664c:5aaa with SMTP id
 u19-20020a0cdd13000000b004bb664c5aaamr20965178qvk.121.1666884017635; 
 Thu, 27 Oct 2022 08:20:17 -0700 (PDT)
Received: from serve.minyard.net ([47.184.147.45])
 by smtp.gmail.com with ESMTPSA id
 r12-20020ae9d60c000000b006f9f3c0c63csm985977qkk.32.2022.10.27.08.20.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Oct 2022 08:20:17 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2cd9:e696:a60f:3003])
 by serve.minyard.net (Postfix) with ESMTPSA id A88A31800BD;
 Thu, 27 Oct 2022 15:20:15 +0000 (UTC)
Date: Thu, 27 Oct 2022 10:20:14 -0500
From: Corey Minyard <minyard@acm.org>
To: Steven Rostedt <rostedt@goodmis.org>
Message-ID: <Y1qhrqfF87gnyiCE@minyard.net>
References: <20221027150525.753064657@goodmis.org>
 <20221027150926.969147187@goodmis.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20221027150926.969147187@goodmis.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Oct 27, 2022 at 11:05:35AM -0400,
 Steven Rostedt wrote:
 > From: "Steven Rostedt (Google)" <rostedt@goodmis.org> > > Before a timer
 is freed, del_timer_shutdown() must be called. Thanks, this is in my queue,
 or: Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.49 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.49 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1oo4gB-00050e-HA
Subject: Re: [Openipmi-developer] [RFC][PATCH v2 10/31] timers: ipmi: Use
 del_timer_shutdown() before freeing timer
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
Cc: Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 openipmi-developer@lists.sourceforge.net, Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Oct 27, 2022 at 11:05:35AM -0400, Steven Rostedt wrote:
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
> 
> Before a timer is freed, del_timer_shutdown() must be called.

Thanks, this is in my queue, or:

Acked-by: Corey Minyard <cminyard@mvista.com>

if you prefer that.

-corey

> 
> Link: https://lore.kernel.org/all/20220407161745.7d6754b3@gandalf.local.home/
> 
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  drivers/char/ipmi/ipmi_ssif.c       | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 49a1707693c9..b577f66f3ca6 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -5540,7 +5540,7 @@ static void __exit cleanup_ipmi(void)
>  		 * here.
>  		 */
>  		atomic_set(&stop_operation, 1);
> -		del_timer_sync(&ipmi_timer);
> +		del_timer_shutdown(&ipmi_timer);
>  
>  		initialized = false;
>  
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index e1072809fe31..bb4df879a5ab 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1273,8 +1273,8 @@ static void shutdown_ssif(void *send_info)
>  		schedule_timeout(1);
>  
>  	ssif_info->stopping = true;
> -	del_timer_sync(&ssif_info->watch_timer);
> -	del_timer_sync(&ssif_info->retry_timer);
> +	del_timer_shutdown(&ssif_info->watch_timer);
> +	del_timer_shutdown(&ssif_info->retry_timer);
>  	if (ssif_info->thread) {
>  		complete(&ssif_info->wake_thread);
>  		kthread_stop(ssif_info->thread);
> -- 
> 2.35.1


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
