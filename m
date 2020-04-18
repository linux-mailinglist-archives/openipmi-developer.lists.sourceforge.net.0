Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FC31AE94D
	for <lists+openipmi-developer@lfdr.de>; Sat, 18 Apr 2020 04:00:24 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jPcmK-0003or-D1; Sat, 18 Apr 2020 02:00:20 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jPcmI-0003oh-Rz
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 02:00:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=UDhmKyRwtrrcwWzyNDyqVl+mjHgBzC9RP/xHPQTSQ2w=; b=Oz0yW71uNj3SCBwVlrulRMbn7L
 hQZeDZFCmH8UYQoFVJGqvW453NBxRyXjObOKOMoYypunR9lbRcN05LU6VQ7fX+UNwAmOpKSGmmiUS
 wbw/bbui5wAw7sI28gpBjDUKeqv+ha/cFD/LZCDjk5sJ1uf6SscMtQ7SAe3jaQbxapI8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=UDhmKyRwtrrcwWzyNDyqVl+mjHgBzC9RP/xHPQTSQ2w=; b=Ecb6154ohJpBjrQa+dwtTRVzWU
 Z6eetLCMic9mAVdsnOjuRB+qQn9SxgI0jaVIPSTGo9a/ptfIPqbXrP1oZqKSxLddamw3EFl9Ifd/H
 drrvWlTDgyqPt8d5tAMheYD5172IHryi6gxzTF5Q8+Inv+P4gl7fed7m3a+4SznyDR3o=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jPcmF-004JLk-QV
 for openipmi-developer@lists.sourceforge.net; Sat, 18 Apr 2020 02:00:18 +0000
Received: by mail-oi1-f194.google.com with SMTP id o25so3776003oic.11
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Apr 2020 19:00:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UDhmKyRwtrrcwWzyNDyqVl+mjHgBzC9RP/xHPQTSQ2w=;
 b=ibvnyBGLmtPAKNZBoF40Vs+m7TVz/L9OzrncZp05mIyVI9HfcORmsAILK4w1Pey6r2
 JdrZIY6bgOt38tFTWlhUw0sHeAyt7p/kCtdgmuAylFmwxgQgvg+G4lpZECNsIGJS1Hxy
 4T9rH5rSA/xCpgttaj68N2YpANPfhjETclI3W6dWTJQQ8YRm+Irq6xq6z0o4F7FhhUYb
 IkpA+ZAXz1rk5YvfpfLtBx9uAin6HDGDam3eAQZPADvZkgs/IaiVOoc2kiTah/vWfHzY
 YE7grFPG4C1gsFH0saqS6SNFKolM1KrRZTugKk/e0BVGi4V+0SH6ti7GvJ6bGaCOsiZO
 o/sA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=UDhmKyRwtrrcwWzyNDyqVl+mjHgBzC9RP/xHPQTSQ2w=;
 b=knF0GVxJ44A0qNGcZYME/x535c2WsOkHhmMg0VroCwaOVQi8X4QOrIAt+g1Vb1pfkW
 VE5f9X89IOrHRixPVIduWvvNI5ES71nFtJPxxqCHm6W4fQVGs+VRGyJi7QpYXiEQEoF4
 ERRqdtfFyzdjttqD/uxaS/HRMKTrQQnrMa9KeDE4c5w9JL5Rj6WnLRX5P2MAhf5ccNJd
 U065XuvXz99tXwJhmjYlV4k11xI/Oly+xGbT4bB0PNXpPHpIgja1Bxgx3+dI9yMIY9Vu
 WH1IA0Kj3tQQoVIDdqnkrkjbX9UPfF4ZKYeE2Baq//MYUAOyFXglZZEXGI5BRskFiYkf
 BEwg==
X-Gm-Message-State: AGi0PubARUAY7BNgHTspHBLPwI1ZjWifdyorkVbZ/N2fFX4Upg3Ytqc9
 qc/1vWKK46v6CtKv49eUxf8Clpw=
X-Google-Smtp-Source: APiQypKUwY3nQ4qkxtA3EZQ4REOJnC1bu+V4YjYtLKwDCnV33bSQ8ZKAHcgVd2lY/cEHQWHKYGsZ0A==
X-Received: by 2002:aca:b984:: with SMTP id j126mr3992277oif.87.1587175209802; 
 Fri, 17 Apr 2020 19:00:09 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id 33sm8451506otn.50.2020.04.17.19.00.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Apr 2020 19:00:08 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id E9680180053;
 Sat, 18 Apr 2020 02:00:07 +0000 (UTC)
Date: Fri, 17 Apr 2020 21:00:06 -0500
From: Corey Minyard <minyard@acm.org>
To: Feng Tang <feng.tang@intel.com>
Message-ID: <20200418020006.GB6246@minyard.net>
References: <1587099689-13678-1-git-send-email-feng.tang@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587099689-13678-1-git-send-email-feng.tang@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: intel.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.8 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.1 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jPcmF-004JLk-QV
Subject: Re: [Openipmi-developer] [PATCH RFC] ipmi: use vzalloc instead of
 kmalloc for user creation
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
 openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Apr 17, 2020 at 01:01:29PM +0800, Feng Tang wrote:
> We met mulitple times of failure of staring bmc-watchdog,
> due to the runtime memory allocation failure of order 4.

I'm beginning to think that using srcu was a bad idea.  It made things
cleaner and easier, but it eats tons of memory.  Sigh.

Applied, at least for a fix for now.

Thanks,

-corey

> 
>      bmc-watchdog: page allocation failure: order:4, mode:0x40cc0(GFP_KERNEL|__GFP_COMP), nodemask=(null),cpuset=/,mems_allowed=0-1
>      CPU: 1 PID: 2571 Comm: bmc-watchdog Not tainted 5.5.0-00045-g7d6bb61d6188c #1
>      Hardware name: Intel Corporation S2600WFT/S2600WFT, BIOS SE5C620.86B.00.01.0015.110720180833 11/07/2018
>      Call Trace:
>       dump_stack+0x66/0x8b
>       warn_alloc+0xfe/0x160
>       __alloc_pages_slowpath+0xd3e/0xd80
>       __alloc_pages_nodemask+0x2f0/0x340
>       kmalloc_order+0x18/0x70
>       kmalloc_order_trace+0x1d/0xb0
>       ipmi_create_user+0x55/0x2c0 [ipmi_msghandler]
>       ipmi_open+0x72/0x110 [ipmi_devintf]
>       chrdev_open+0xcb/0x1e0
>       do_dentry_open+0x1ce/0x380
>       path_openat+0x305/0x14f0
>       do_filp_open+0x9b/0x110
>       do_sys_open+0x1bd/0x250
>       do_syscall_64+0x5b/0x1f0
>       entry_SYSCALL_64_after_hwframe+0x44/0xa9
> 
> Using vzalloc/vfree for creating ipmi_user heals the
> problem.
> 
> Signed-off-by: Feng Tang <feng.tang@intel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index c48d8f0..96f1573 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1153,7 +1153,7 @@ static void free_user_work(struct work_struct *work)
>  					      remove_work);
>  
>  	cleanup_srcu_struct(&user->release_barrier);
> -	kfree(user);
> +	vfree(user);
>  }
>  
>  int ipmi_create_user(unsigned int          if_num,
> @@ -1185,7 +1185,7 @@ int ipmi_create_user(unsigned int          if_num,
>  	if (rv)
>  		return rv;
>  
> -	new_user = kmalloc(sizeof(*new_user), GFP_KERNEL);
> +	new_user = vzalloc(sizeof(*new_user));
>  	if (!new_user)
>  		return -ENOMEM;
>  
> @@ -1232,7 +1232,7 @@ int ipmi_create_user(unsigned int          if_num,
>  
>  out_kfree:
>  	srcu_read_unlock(&ipmi_interfaces_srcu, index);
> -	kfree(new_user);
> +	vfree(new_user);
>  	return rv;
>  }
>  EXPORT_SYMBOL(ipmi_create_user);
> -- 
> 2.7.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
