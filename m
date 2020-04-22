Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F7391B4643
	for <lists+openipmi-developer@lfdr.de>; Wed, 22 Apr 2020 15:30:45 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jRFSd-0008HR-RY; Wed, 22 Apr 2020 13:30:43 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jRFSa-0008HD-EZ
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Apr 2020 13:30:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=KpZ0AbOVtlAnlW4tUSgZ61IWfF+PpEEhwrSiuOYvWIg=; b=iz/X/uouVcGl9UwY1eJG1MlKgC
 C6WP1PQNApTsde51Cj+srq5pJkBqYUqMiPay+lJuCkixnKiBx1rUJ2IXfdoDomWcX0hw0Eb2kUeQP
 XcK5NHIAim8C9imrVjvL4yCmFqTzFo8tNYCAX6t/EkgMyCDlTbnCXdYlKYW+nYt3V12M=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=KpZ0AbOVtlAnlW4tUSgZ61IWfF+PpEEhwrSiuOYvWIg=; b=g6Eq3NRcthS8l3DpEaX4phlcay
 IssNTBqrNl5BgqVlnYjPCqi4VGBgjwqnRbBeqsYZtLZPZg6B7fQgNiEc3OTf6C8guJH/E/n7blBeR
 R8mR2eQGMbhSgr6PUhi4tLnr/sZkLCMeTj0ruevWcacZmZpOvvQLP77rNNpeZCMTXzMQ=;
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jRFSY-006Lbj-KI
 for openipmi-developer@lists.sourceforge.net; Wed, 22 Apr 2020 13:30:40 +0000
Received: by mail-ot1-f66.google.com with SMTP id b13so1994055oti.3
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 22 Apr 2020 06:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=KpZ0AbOVtlAnlW4tUSgZ61IWfF+PpEEhwrSiuOYvWIg=;
 b=NnUhEjwe+1cPEoa2VwbMcyfJiD5LAVGErtJbik2P5AVGfWSWNSl52DmovAqYt1sj2K
 NU+p14Zqna2Zrf4hmFOX0JG46lw+PjYAJPoP+Mveb2ymzxS4Hzk138LCSf1/nkTyKnKB
 /cpXkpbGoiEXjNqk7qRHJWnaXt4sHMthAp/IRo07Zv9V3g2Ux3ck3fNt0VupQ0t+OhA3
 UIy/14Uk0hfkfF/ibdhNBltI0eZwgUseu2jj3nqeRX8iqazNypZjJVq6LrPekxLHxKfo
 OS6QT6emF0GLo3ZD/hEtaK61uWQw5s6PmreCbVDscvK4FXnI7mtAAqdnxCPm8VMQTg5Z
 bSsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=KpZ0AbOVtlAnlW4tUSgZ61IWfF+PpEEhwrSiuOYvWIg=;
 b=BqFxU3pOh/s5PMcgUbWt2JET0ieHFPpaJGgawoJTPG6PRcNxZ569i2PONmnLnLHUXT
 8ACBuWZFetgdBeMNOyomoRIpa5j/dtUoYRP6HktmYoR3Wi+y9+mn5lOOLL+AoC7/paxq
 QBB39n8r5JZCgVM0Cae16FouA9o4jzAiDxWgDIIjSf0CBvBue3MctFFax5sS9rP917Mk
 e5ToUgSCpJW+V6XrNy0aZAPWu0aVqV7/5oUG1GEvdIDteExSCI2eddTpmPxqZbe78ASh
 uysUSJXAgZW5cFIsjAg/WjUsHIEUE+56oO0VTbMHfGKBR+twh+B+6AtNSj3O++8GY3hZ
 bMIQ==
X-Gm-Message-State: AGi0PuYXTNgtbTyfskeRrU+dwG1hrtYcit0j+T5RgJ3O2TdPbRrCFWw5
 a94H8uzxjQ/22K9gQrPvKw==
X-Google-Smtp-Source: APiQypKRSNcd73HtVEqvpIWWZOBJIx02g6tZ39s2h1PaCKdsRL3canccY97bv5Ho0oJjkCxId1X1ww==
X-Received: by 2002:a9d:e8b:: with SMTP id 11mr17520306otj.199.1587562232719; 
 Wed, 22 Apr 2020 06:30:32 -0700 (PDT)
Received: from serve.minyard.net ([47.184.149.130])
 by smtp.gmail.com with ESMTPSA id t26sm1506257otl.71.2020.04.22.06.30.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 22 Apr 2020 06:30:31 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:8b39:c3f3:f502:5c4e])
 by serve.minyard.net (Postfix) with ESMTPSA id E04B818003C;
 Wed, 22 Apr 2020 13:30:30 +0000 (UTC)
Date: Wed, 22 Apr 2020 08:30:29 -0500
From: Corey Minyard <minyard@acm.org>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Message-ID: <20200422133029.GK6246@minyard.net>
References: <20200422130348.38749-1-andriy.shevchenko@linux.intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200422130348.38749-1-andriy.shevchenko@linux.intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1jRFSY-006Lbj-KI
Subject: Re: [Openipmi-developer] [PATCH v1] ipmi: Replace guid_copy() with
 import_guid() where it makes sense
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Apr 22, 2020 at 04:03:48PM +0300, Andy Shevchenko wrote:
> There is a specific API to treat raw data as GUID, i.e. import_guid().
> Use it instead of guid_copy() with explicit casting.

Ok, I have added this to my tree.  Thanks.

-corey

> 
> Signed-off-by: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 9afd220cd824e..e1b22fe0916cf 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -3172,7 +3172,7 @@ static void guid_handler(struct ipmi_smi *intf, struct ipmi_recv_msg *msg)
>  		goto out;
>  	}
>  
> -	guid_copy(&bmc->fetch_guid, (guid_t *)(msg->msg.data + 1));
> +	import_guid(&bmc->fetch_guid, msg->msg.data + 1);
>  	/*
>  	 * Make sure the guid data is available before setting
>  	 * dyn_guid_set.
> -- 
> 2.26.1
> 
> 
> 
> _______________________________________________
> Openipmi-developer mailing list
> Openipmi-developer@lists.sourceforge.net
> https://lists.sourceforge.net/lists/listinfo/openipmi-developer


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
