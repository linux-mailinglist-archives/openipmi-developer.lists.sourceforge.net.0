Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id EEFB7279578
	for <lists+openipmi-developer@lfdr.de>; Sat, 26 Sep 2020 02:15:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1kLxsB-0003ke-Rn; Sat, 26 Sep 2020 00:15:31 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1kLxsA-0003kH-Hc
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 00:15:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=IzqcIIIVjcTzZOrnik99fl+SNFAYOQfWnQfkvCmEFDQ=; b=EtNlYIIYA1Ae8MNgSY99G350WZ
 qHkuqViQ5NLxH8wNd8WRtXxO5mJHF0kIg959rmsi5BlVJJOC43nkPZg7bXeLy+8tYpwKvCA/x6Voy
 UdNjw4AOGRkmwgtgf3ugcZLCv1AO/+ZU2+SS8OhE9dyL22HzC1foMAD1Ms6p4qZDSLPI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=IzqcIIIVjcTzZOrnik99fl+SNFAYOQfWnQfkvCmEFDQ=; b=A0sJ7/bgaFxgHXN2UMs2WJarvS
 MX2dAAuT5c4BKNJFzV0V/iHXwoB/b7V0ivWOzzMU6MpsMo2yRNGE2yvk5jC66pZtwJdfJQx8+lCHu
 X/qRUWEVsmmxlun60csddYAVeMyp4jFWoejvniUJ8hs1lu/AKiDvhwCRF85JgcQHUaQg=;
Received: from mail-oo1-f66.google.com ([209.85.161.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1kLxs6-0069Ii-R1
 for openipmi-developer@lists.sourceforge.net; Sat, 26 Sep 2020 00:15:30 +0000
Received: by mail-oo1-f66.google.com with SMTP id t3so1172973ook.8
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 25 Sep 2020 17:15:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IzqcIIIVjcTzZOrnik99fl+SNFAYOQfWnQfkvCmEFDQ=;
 b=BbFBE7wQLNIkTBvEy8i0RgoomvuTE+IujdSmUTMhlJPvm5iesc3zxcRX24M6cibvH9
 PXJopEuG05NYcrunmZ99eHmf4YUpRIiBl9Fd8uB1b1oUAoUgcRRGjpfz7SmWOdYcsPFi
 sr/QPWkRKNYgwANb47XzCAMmGP+cS/++vDuQ/cdms1alnBy4UFnU/aLIssessAWSDRwC
 TYRiMNaA9oxV7tQoA+Oul1UrHW+0q6AyIDpBge1CCbh7Hd816hVg+ie2MTSi4C8Zn8GS
 17atVIEQ7WvGqluKFicFMJx/gRkpzmzHQ89dVb3NyLl/S2QUfmgy39L8waTJyEcUTSdT
 I52w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=IzqcIIIVjcTzZOrnik99fl+SNFAYOQfWnQfkvCmEFDQ=;
 b=P+MObimcpeFumP/m3hI49hsuJIIcfAd2WSao/FRob3qXsBYWJchoumCful8sXxpMxS
 6kJZV0rKr/l8xX9ZydaafcbAH65Yv+GxpuYng/iJWmHZ95EYOQg7orYa1gLV+4ZDVBhZ
 LjI0PpSbYqO4qpybV53uFhmJtb8C/P3NXTBVeaGCym9RFHXwcNicHL+z2lmDfKbflw6o
 naPOp3digMwAGegzk+DZkJru56tCBontvjc1NWrJFCfTMPmFKL/BoZsxychgIk4QPYnc
 71K5xXY7ej9591sYnSRsMH0kD0EY1g9ry3imGUrSoZv9Q+IJAJftqfMZHnddWp9QTsJ/
 zq3w==
X-Gm-Message-State: AOAM531SroXGa8SZf1ThM3tzW9Itk5u0BtRCku6zwJNhhYMgcdVh7Qf+
 uPpHsWbMK3YkeSlDs4v3Cw==
X-Google-Smtp-Source: ABdhPJxKKVB+Ta3jiRes060TdPSxnKgD8dm+Q+ajwigFwiW9T5z+6ERR1pP8tFWh4N+4nh+9Xd4KRw==
X-Received: by 2002:a4a:96a3:: with SMTP id s32mr2559408ooi.17.1601079313917; 
 Fri, 25 Sep 2020 17:15:13 -0700 (PDT)
Received: from serve.minyard.net ([47.184.170.156])
 by smtp.gmail.com with ESMTPSA id l1sm204519ooe.20.2020.09.25.17.15.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Sep 2020 17:15:12 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:f4c0:523f:f851:b38b])
 by serve.minyard.net (Postfix) with ESMTPSA id EEB2118003E;
 Sat, 26 Sep 2020 00:15:11 +0000 (UTC)
Date: Fri, 25 Sep 2020 19:15:10 -0500
From: Corey Minyard <minyard@acm.org>
To: Shuah Khan <skhan@linuxfoundation.org>
Message-ID: <20200926001510.GH3674@minyard.net>
References: <cover.1601073127.git.skhan@linuxfoundation.org>
 <b742c2637a8b6083c471a6dd829db70071909f83.1601073127.git.skhan@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b742c2637a8b6083c471a6dd829db70071909f83.1601073127.git.skhan@linuxfoundation.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.3 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.161.66 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.161.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1kLxs6-0069Ii-R1
Subject: Re: [Openipmi-developer] [PATCH 09/11] drivers/char/ipmi: convert
 stats to use counter_atomic32
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
 keescook@chromium.org, arnd@arndb.de, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Sep 25, 2020 at 05:47:23PM -0600, Shuah Khan wrote:
> counter_atomic* is introduced to be used when a variable is used as
> a simple counter and doesn't guard object lifetimes. This clearly
> differentiates atomic_t usages that guard object lifetimes.
> 
> counter_atomic* variables will wrap around to 0 when it overflows and
> should not be used to guard resource lifetimes, device usage and
> open counts that control state changes, and pm states.
> 
> atomic_t variables used for stats are atomic counters. Overflow will
> wrap around and reset the stats and no change with the conversion.
> 
> Convert them to use counter_atomic32.
> 
> Signed-off-by: Shuah Khan <skhan@linuxfoundation.org>

Reviewed-by: Corey Minyard <cminyard@mvista.com>

I assume for this conversion that the plan is to eliminate atomic_t
completely and convert all atomic counters used for object lifetime to
struct kref?  The new naming is certainly more clear and I'm happy with
this change.

-corey

> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 9 +++++----
>  drivers/char/ipmi/ipmi_si_intf.c    | 9 +++++----
>  2 files changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 737c0b6b24ea..36c0b1be22fb 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -34,6 +34,7 @@
>  #include <linux/uuid.h>
>  #include <linux/nospec.h>
>  #include <linux/vmalloc.h>
> +#include <linux/counters.h>
>  
>  #define IPMI_DRIVER_VERSION "39.2"
>  
> @@ -584,7 +585,7 @@ struct ipmi_smi {
>  	struct ipmi_my_addrinfo addrinfo[IPMI_MAX_CHANNELS];
>  	bool channels_ready;
>  
> -	atomic_t stats[IPMI_NUM_STATS];
> +	struct counter_atomic32 stats[IPMI_NUM_STATS];
>  
>  	/*
>  	 * run_to_completion duplicate of smb_info, smi_info
> @@ -630,9 +631,9 @@ static LIST_HEAD(smi_watchers);
>  static DEFINE_MUTEX(smi_watchers_mutex);
>  
>  #define ipmi_inc_stat(intf, stat) \
> -	atomic_inc(&(intf)->stats[IPMI_STAT_ ## stat])
> +	counter_atomic32_inc(&(intf)->stats[IPMI_STAT_ ## stat])
>  #define ipmi_get_stat(intf, stat) \
> -	((unsigned int) atomic_read(&(intf)->stats[IPMI_STAT_ ## stat]))
> +	((unsigned int) counter_atomic32_read(&(intf)->stats[IPMI_STAT_ ## stat]))
>  
>  static const char * const addr_src_to_str[] = {
>  	"invalid", "hotmod", "hardcoded", "SPMI", "ACPI", "SMBIOS", "PCI",
> @@ -3448,7 +3449,7 @@ int ipmi_add_smi(struct module         *owner,
>  	INIT_LIST_HEAD(&intf->cmd_rcvrs);
>  	init_waitqueue_head(&intf->waitq);
>  	for (i = 0; i < IPMI_NUM_STATS; i++)
> -		atomic_set(&intf->stats[i], 0);
> +		counter_atomic32_set(&intf->stats[i], 0);
>  
>  	mutex_lock(&ipmi_interfaces_mutex);
>  	/* Look for a hole in the numbers. */
> diff --git a/drivers/char/ipmi/ipmi_si_intf.c b/drivers/char/ipmi/ipmi_si_intf.c
> index 77b8d551ae7f..0909a3461f05 100644
> --- a/drivers/char/ipmi/ipmi_si_intf.c
> +++ b/drivers/char/ipmi/ipmi_si_intf.c
> @@ -43,6 +43,7 @@
>  #include "ipmi_si_sm.h"
>  #include <linux/string.h>
>  #include <linux/ctype.h>
> +#include <linux/counters.h>
>  
>  /* Measure times between events in the driver. */
>  #undef DEBUG_TIMING
> @@ -237,7 +238,7 @@ struct smi_info {
>  	bool dev_group_added;
>  
>  	/* Counters and things for the proc filesystem. */
> -	atomic_t stats[SI_NUM_STATS];
> +	struct counter_atomic32 stats[SI_NUM_STATS];
>  
>  	struct task_struct *thread;
>  
> @@ -245,9 +246,9 @@ struct smi_info {
>  };
>  
>  #define smi_inc_stat(smi, stat) \
> -	atomic_inc(&(smi)->stats[SI_STAT_ ## stat])
> +	counter_atomic32_inc(&(smi)->stats[SI_STAT_ ## stat])
>  #define smi_get_stat(smi, stat) \
> -	((unsigned int) atomic_read(&(smi)->stats[SI_STAT_ ## stat]))
> +	((unsigned int) counter_atomic32_read(&(smi)->stats[SI_STAT_ ## stat]))
>  
>  #define IPMI_MAX_INTFS 4
>  static int force_kipmid[IPMI_MAX_INTFS];
> @@ -2013,7 +2014,7 @@ static int try_smi_init(struct smi_info *new_smi)
>  	atomic_set(&new_smi->req_events, 0);
>  	new_smi->run_to_completion = false;
>  	for (i = 0; i < SI_NUM_STATS; i++)
> -		atomic_set(&new_smi->stats[i], 0);
> +		counter_atomic32_set(&new_smi->stats[i], 0);
>  
>  	new_smi->interrupt_disabled = true;
>  	atomic_set(&new_smi->need_watch, 0);
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
