Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id AF875A0032D
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Jan 2025 04:34:48 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1tTYSL-0000U0-Ds;
	Fri, 03 Jan 2025 03:34:37 +0000
Received: from [172.30.29.66] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <corey@minyard.net>) id 1tTYSJ-0000Tq-9L
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 03:34:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ojyDsvzcYX6bZ9hy4t2yQkdLV82UeQ9UgOyBYBPPp1A=; b=hrKqwxzQFZLrHyGn3UXh3r77wI
 HiwXSpDD7l5UgwX+xXpsswueXMONAAwuW0VryqMu3YMShgvhi0gOYQ9/9jOOAhfCVMRN7JLzP8JY8
 3FDwC+OyON249DHMl5yqazlP83pGgCBYTs2Rntry3Y0XYzqnmXPUYX/r1+SnhR9Am+jo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=ojyDsvzcYX6bZ9hy4t2yQkdLV82UeQ9UgOyBYBPPp1A=; b=TVrHBNHHJvb6HbeJopYWmbpnlp
 GQIpZazDIggALP0dLJigqXYcGtCLf/Q6ymqxFvqQM07v8rF6EmTRnhjXxvBoRNYYqFh3xJTk193jh
 PjKFbldOrUXA2F26obyztJeU0RH5camdDibpEkcGM0u2U/fjKvSEvbS6s8lUGLnH82xY=;
Received: from mail-il1-f177.google.com ([209.85.166.177])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1tTYSI-0001o0-9N for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Jan 2025 03:34:35 +0000
Received: by mail-il1-f177.google.com with SMTP id
 e9e14a558f8ab-3a9cb8460f7so89741865ab.2
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 02 Jan 2025 19:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=minyard-net.20230601.gappssmtp.com; s=20230601; t=1735875263; x=1736480063;
 darn=lists.sourceforge.net; 
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:from:to:cc:subject:date
 :message-id:reply-to;
 bh=ojyDsvzcYX6bZ9hy4t2yQkdLV82UeQ9UgOyBYBPPp1A=;
 b=y0Xzwa6kfQCT0FajV+lZB/1844b22yxMcEVG8FLk0mnnYLp95O3IhK2cp0wbg8TKf5
 0yiyhbw5YptyPBw6hudUH3MJNRrOjhzFWE3apZYHzDNtG+sD3N4GiFOYtKUVyZxBq2L1
 UIGuWOhu2/VOh8/fyhs/3E2SvguHObgT/aGvocj/JyPeV2ywb+6IXiMnvR6/zV4aId7u
 3ba1XZvWLeo5WoQKV8n6wXQQTDPTE4os71emf9zkrNJg12wYDIyewTRW1x+qEbei7WEz
 YkvTnPLeeemv1eJo/pYqEOjzpaW6HPgwRDEoTt972mxwbBUOR+ev6/eAX+Y5I1byPpeW
 3Piw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1735875263; x=1736480063;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=ojyDsvzcYX6bZ9hy4t2yQkdLV82UeQ9UgOyBYBPPp1A=;
 b=ab/SyzQ1upOHjI0hvKCR4szf7XaTUu+BmwUZu3hPjlepPrIA5sRntkfyHah9c/sqcX
 VoslFiDEf0gQ4NI14YDFiR5hYhnYffFnse6zW2dN+2THo+ongbwVf+6T2NozjWhAi+oi
 Xz/UCNLojOk3ioHSun0Vu1HkbFx2wc8+bJCzsDAWJdqqr/XJGAelxTlTEZN3ZAKpXpya
 gwFQo/sGT1zFgzDBVBiyDqDT8QdmEiPi011k6CVMUQGvno4QD24b2qY1kLT6oTGTtq0p
 upFow2WB0gaUNA6pis2L/4yQlO31v+ZHVz5e/ltsrA/gBziBfKm/ecQnz7UeLmh0a5sz
 Vjxg==
X-Forwarded-Encrypted: i=1;
 AJvYcCWTX7ftAHANYxFQx7MHT/TzE8mQDRJuCvj6gtV14nlSkHnmOLDhB0H36uiQ9aFXquz6ZOn64lmz1J2Y5hlp+Xy0FTk=@lists.sourceforge.net
X-Gm-Message-State: AOJu0YzxUVafYJoQ6OtfC+xnFTJ4Fva2njUA4OdQ0RKg85YomKSnNe8R
 gCsADmoNBf5XXCWzyV9Jy8EZ4fKnNKnS4VMIxr2TZFZdN3cCNEtwkAC9jDSVmVjPG3FklcZziBI
 JMY4=
X-Gm-Gg: ASbGncs9Tz9pagLaJ7aWfnhkv/9tmfzOw6dgBI0fRwQ6/v1PMMVgY9FtVMfjnq4SB2b
 vKK+D4YVDzK4vF0bstZf7XjZSD/JbFlolnal1VLiavjaXHddwWJAQprG2j5UHq+clx2JpT3sdVU
 hzhPjLzU9jF27jzjTLZnI2SHw7U732Ah8navEG//iLIEesSRmOX0WlQaxhrQXka6rLb5Eke85yV
 Xi/t7a3F1bLvIMaClB7C16OQQCBPEfEZHGmJ/16crkJ9m8uQXKllS/62ZMj
X-Google-Smtp-Source: AGHT+IEslTTiif85XWGg8q4fNEh33Y6f4ykrORDcDRtaao/HSQsmL91nYJNrhpwMcqyeh0FHcF+sHg==
X-Received: by 2002:a05:6830:6f43:b0:71d:88f0:b13 with SMTP id
 46e09a7af769-720ff6850dcmr26206959a34.1.1735873989618; 
 Thu, 02 Jan 2025 19:13:09 -0800 (PST)
Received: from mail.minyard.net ([2001:470:b8f6:1b:81ab:b2d6:d879:cada])
 by smtp.gmail.com with ESMTPSA id
 46e09a7af769-71fc97a4085sm8072576a34.22.2025.01.02.19.13.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 02 Jan 2025 19:13:08 -0800 (PST)
Date: Thu, 2 Jan 2025 21:13:03 -0600
From: Corey Minyard <corey@minyard.net>
To: Vitaliy Shevtsov <v.shevtsov@maxima.ru>
Message-ID: <Z3dVv-SYIljxw_OX@mail.minyard.net>
References: <20241225014532.20091-1-v.shevtsov@maxima.ru>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20241225014532.20091-1-v.shevtsov@maxima.ru>
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 25, 2024 at 01:45:30AM +0000, Vitaliy Shevtsov
 wrote: > Return value of ipmi_destroy_user() has no meaning, because it's
 always > zero and callers can do nothing with it. And in most cases [...]
 Content analysis details:   (0.0 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_VALIDITY_CERTIFIED_BLOCKED RBL: ADMINISTRATOR NOTICE:
 The query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.177 listed in sa-accredit.habeas.com]
 0.0 RCVD_IN_VALIDITY_RPBL_BLOCKED RBL: ADMINISTRATOR NOTICE: The
 query to Validity was blocked.  See
 https://knowledge.validity.com/hc/en-us/articles/20961730681243
 for more information.
 [209.85.166.177 listed in bl.score.senderscore.com]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.177 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.177 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Headers-End: 1tTYSI-0001o0-9N
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi: make ipmi_destroy_user()
 return void
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
Reply-To: corey@minyard.net
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Corey Minyard <minyard@acm.org>, lvc-project@linuxtesting.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 25, 2024 at 01:45:30AM +0000, Vitaliy Shevtsov wrote:
> Return value of ipmi_destroy_user() has no meaning, because it's always
> zero and callers can do nothing with it. And in most cases it's not
> checked. So make this function return void. This also will eliminate static
> code analyzer warnings such as unreachable code/redundant comparison when
> the return value is checked against non-zero value.

This is applied to my next tree, thank you.

-corey

> 
> Found by Linux Verification Center (linuxtesting.org) with Svace.
> 
> Signed-off-by: Vitaliy Shevtsov <v.shevtsov@maxima.ru>
> ---
> v2: Add changes in drivers/char/ipmi/ipmi_poweroff.c missed by chance
> 
>  drivers/char/ipmi/ipmi_devintf.c    | 5 +----
>  drivers/char/ipmi/ipmi_msghandler.c | 4 +---
>  drivers/char/ipmi/ipmi_poweroff.c   | 6 +-----
>  drivers/char/ipmi/ipmi_watchdog.c   | 5 +----
>  include/linux/ipmi.h                | 2 +-
>  5 files changed, 5 insertions(+), 17 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
> index 332082e02ea5..e6ba35b71f10 100644
> --- a/drivers/char/ipmi/ipmi_devintf.c
> +++ b/drivers/char/ipmi/ipmi_devintf.c
> @@ -122,12 +122,9 @@ static int ipmi_open(struct inode *inode, struct file *file)
>  static int ipmi_release(struct inode *inode, struct file *file)
>  {
>  	struct ipmi_file_private *priv = file->private_data;
> -	int                      rv;
>  	struct ipmi_recv_msg *msg, *next;
>  
> -	rv = ipmi_destroy_user(priv->user);
> -	if (rv)
> -		return rv;
> +	ipmi_destroy_user(priv->user);
>  
>  	list_for_each_entry_safe(msg, next, &priv->recv_msgs, link)
>  		ipmi_free_recv_msg(msg);
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index e12b531f5c2f..1e5313748f8b 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1398,13 +1398,11 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
>  	module_put(owner);
>  }
>  
> -int ipmi_destroy_user(struct ipmi_user *user)
> +void ipmi_destroy_user(struct ipmi_user *user)
>  {
>  	_ipmi_destroy_user(user);
>  
>  	kref_put(&user->refcount, free_user);
> -
> -	return 0;
>  }
>  EXPORT_SYMBOL(ipmi_destroy_user);
>  
> diff --git a/drivers/char/ipmi/ipmi_poweroff.c b/drivers/char/ipmi/ipmi_poweroff.c
> index 941d2dcc8c9d..05f17e3e6207 100644
> --- a/drivers/char/ipmi/ipmi_poweroff.c
> +++ b/drivers/char/ipmi/ipmi_poweroff.c
> @@ -699,8 +699,6 @@ static int __init ipmi_poweroff_init(void)
>  #ifdef MODULE
>  static void __exit ipmi_poweroff_cleanup(void)
>  {
> -	int rv;
> -
>  #ifdef CONFIG_PROC_FS
>  	unregister_sysctl_table(ipmi_table_header);
>  #endif
> @@ -708,9 +706,7 @@ static void __exit ipmi_poweroff_cleanup(void)
>  	ipmi_smi_watcher_unregister(&smi_watcher);
>  
>  	if (ready) {
> -		rv = ipmi_destroy_user(ipmi_user);
> -		if (rv)
> -			pr_err("could not cleanup the IPMI user: 0x%x\n", rv);
> +		ipmi_destroy_user(ipmi_user);
>  		pm_power_off = old_poweroff_func;
>  	}
>  }
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 335eea80054e..f1875b2bebbc 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -1064,7 +1064,6 @@ static void ipmi_register_watchdog(int ipmi_intf)
>  
>  static void ipmi_unregister_watchdog(int ipmi_intf)
>  {
> -	int rv;
>  	struct ipmi_user *loc_user = watchdog_user;
>  
>  	if (!loc_user)
> @@ -1089,9 +1088,7 @@ static void ipmi_unregister_watchdog(int ipmi_intf)
>  	mutex_lock(&ipmi_watchdog_mutex);
>  
>  	/* Disconnect from IPMI. */
> -	rv = ipmi_destroy_user(loc_user);
> -	if (rv)
> -		pr_warn("error unlinking from IPMI: %d\n",  rv);
> +	ipmi_destroy_user(loc_user);
>  
>  	/* If it comes back, restart it properly. */
>  	ipmi_start_timer_on_heartbeat = 1;
> diff --git a/include/linux/ipmi.h b/include/linux/ipmi.h
> index a1c9c0d48ebf..2f74dd90c271 100644
> --- a/include/linux/ipmi.h
> +++ b/include/linux/ipmi.h
> @@ -126,7 +126,7 @@ int ipmi_create_user(unsigned int          if_num,
>   * the users before you destroy the callback structures, it should be
>   * safe, too.
>   */
> -int ipmi_destroy_user(struct ipmi_user *user);
> +void ipmi_destroy_user(struct ipmi_user *user);
>  
>  /* Get the IPMI version of the BMC we are talking to. */
>  int ipmi_get_version(struct ipmi_user *user,
> -- 
> 2.47.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
